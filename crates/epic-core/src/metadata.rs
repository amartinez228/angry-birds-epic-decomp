//! Bounds-checked reader for this game's IL2CPP v23 metadata.
//! Names establish declarations; they do not reconstruct native method bodies.
use std::io::{Error, ErrorKind, Result};

fn invalid(message: &'static str) -> Error {
    Error::new(ErrorKind::InvalidData, message)
}

pub struct Metadata<'a> {
    bytes: &'a [u8],
    strings: &'a [u8],
}

#[derive(Debug)]
pub struct Declaration {
    pub namespace: String,
    pub class: String,
    pub methods: Vec<String>,
    pub fields: Vec<String>,
}

impl<'a> Metadata<'a> {
    fn word(bytes: &[u8], at: usize) -> Result<u32> {
        let end = at
            .checked_add(4)
            .ok_or_else(|| invalid("Offset overflow"))?;
        let slice = bytes
            .get(at..end)
            .ok_or_else(|| invalid("Truncated metadata"))?;
        Ok(u32::from_le_bytes(slice.try_into().unwrap()))
    }

    fn half(&self, at: usize) -> Result<usize> {
        let slice = self
            .bytes
            .get(at..at + 2)
            .ok_or_else(|| invalid("Truncated record"))?;
        Ok(u16::from_le_bytes(slice.try_into().unwrap()) as usize)
    }

    fn section(bytes: &[u8], index: usize, width: usize) -> Result<(usize, usize)> {
        let at = 8 + index * 8;
        let offset = Self::word(bytes, at)? as usize;
        let size = Self::word(bytes, at + 4)? as usize;
        if !size.is_multiple_of(width) || offset < 264 {
            return Err(invalid("Invalid metadata section geometry"));
        }
        let end = offset
            .checked_add(size)
            .ok_or_else(|| invalid("Section overflow"))?;
        if end > bytes.len() {
            return Err(invalid("Section outside input"));
        }
        Ok((offset, size / width))
    }

    pub fn parse(bytes: &'a [u8]) -> Result<Self> {
        if Self::word(bytes, 0)? != 0xFAB1_1BAF || Self::word(bytes, 4)? != 23 {
            return Err(invalid("Expected IL2CPP metadata version 23"));
        }
        if bytes.len() < 264 {
            return Err(invalid("Truncated v23 header"));
        }
        let (start, len) = Self::section(bytes, 2, 1)?;
        Ok(Self {
            bytes,
            strings: &bytes[start..start + len],
        })
    }

    fn name(&self, index: u32) -> Result<String> {
        let tail = self
            .strings
            .get(index as usize..)
            .ok_or_else(|| invalid("Invalid name index"))?;
        let end = tail
            .iter()
            .position(|&b| b == 0)
            .ok_or_else(|| invalid("Unterminated name"))?;
        String::from_utf8(tail[..end].to_vec()).map_err(|_| invalid("Invalid UTF-8 name"))
    }

    pub fn counts(&self) -> Result<(usize, usize)> {
        Ok((
            Self::section(self.bytes, 19, 104)?.1,
            Self::section(self.bytes, 5, 56)?.1,
        ))
    }

    pub fn find(&self, query: &str) -> Result<Vec<Declaration>> {
        let query = query.to_lowercase();
        let (types, count) = Self::section(self.bytes, 19, 104)?;
        let (methods, method_count) = Self::section(self.bytes, 5, 56)?;
        let (fields, field_count) = Self::section(self.bytes, 11, 16)?;
        let mut result = Vec::new();
        for i in 0..count {
            let at = types + i * 104;
            let class = self.name(Self::word(self.bytes, at)?)?;
            if !class.to_lowercase().contains(&query) {
                continue;
            }
            let namespace = self.name(Self::word(self.bytes, at + 4)?)?;
            let mut declaration = Declaration {
                namespace,
                class,
                methods: vec![],
                fields: vec![],
            };
            for (offset, length, base, width, total, output) in [
                (
                    52,
                    self.half(at + 80)?,
                    methods,
                    56,
                    method_count,
                    &mut declaration.methods,
                ),
                (
                    48,
                    self.half(at + 84)?,
                    fields,
                    16,
                    field_count,
                    &mut declaration.fields,
                ),
            ] {
                if length == 0 {
                    continue;
                }
                let start = Self::word(self.bytes, at + offset)? as usize;
                if start
                    .checked_add(length)
                    .filter(|&end| end <= total)
                    .is_none()
                {
                    return Err(invalid("Member range outside section"));
                }
                for row in start..start + length {
                    output.push(self.name(Self::word(self.bytes, base + row * width)?)?);
                }
            }
            result.push(declaration);
        }
        Ok(result)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn truncated_and_unsupported_inputs_return_errors() {
        for size in 0..264 {
            assert!(Metadata::parse(&vec![0; size]).is_err());
        }
        let mut bytes = vec![0; 264];
        bytes[..4].copy_from_slice(&0xFAB1_1BAFu32.to_le_bytes());
        bytes[4..8].copy_from_slice(&24u32.to_le_bytes());
        assert!(Metadata::parse(&bytes).is_err());
    }
}
