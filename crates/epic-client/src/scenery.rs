//! Original campaign scene rest poses. Animated props, shaders and camera
//! scripts still need reconstruction; projection uses the saved scene camera.
use macroquad::prelude::*;
use std::collections::HashMap;

include!("scenery_generated.rs");

struct Draw {
    texture: u16,
    vertices: Vec<[f32; 8]>,
    indices: Vec<u16>,
}
struct Scene {
    id: String,
    background: Color,
    camera: Vec2,
    half_height: f32,
    draws: Vec<Draw>,
}

struct Reader<'a> {
    bytes: &'a [u8],
}
impl<'a> Reader<'a> {
    fn take(&mut self, size: usize) -> Result<&'a [u8], &'static str> {
        let value = self.bytes.get(..size).ok_or("Truncated scenery data")?;
        self.bytes = &self.bytes[size..];
        Ok(value)
    }
    fn short(&mut self) -> Result<u16, &'static str> {
        Ok(u16::from_le_bytes(self.take(2)?.try_into().unwrap()))
    }
    fn count(&mut self, maximum: usize) -> Result<usize, &'static str> {
        let value = u32::from_le_bytes(self.take(4)?.try_into().unwrap()) as usize;
        (value <= maximum)
            .then_some(value)
            .ok_or("Oversized scenery array")
    }
    fn number(&mut self) -> Result<f32, &'static str> {
        let value = f32::from_le_bytes(self.take(4)?.try_into().unwrap());
        value
            .is_finite()
            .then_some(value)
            .ok_or("Invalid scenery number")
    }
}

fn decode(bytes: &[u8]) -> Result<Vec<Scene>, &'static str> {
    let mut reader = Reader { bytes };
    if reader.take(8)? != b"EPICSC01" {
        return Err("Unknown scenery format");
    }
    let count = reader.count(1000)?;
    let mut scenes: Vec<Scene> = Vec::new();
    for _ in 0..count {
        let size = reader.short()? as usize;
        let id = std::str::from_utf8(reader.take(size)?)
            .map_err(|_| "Invalid scenery ID")?
            .to_owned();
        if scenes.iter().any(|scene| scene.id == id) {
            return Err("Duplicate scenery ID");
        }
        let background = Color::new(
            reader.number()?,
            reader.number()?,
            reader.number()?,
            reader.number()?,
        );
        let camera = vec2(reader.number()?, reader.number()?);
        let half_height = reader.number()?;
        if half_height <= 0. {
            return Err("Invalid scenery camera");
        }
        let mut draws = Vec::new();
        for _ in 0..reader.count(10000)? {
            let texture = reader.short()?;
            if texture != u16::MAX && texture as usize >= TEXTURES.len() {
                return Err("Scenery texture index outside catalog");
            }
            let size = reader.count(u16::MAX as usize)?;
            let index_count = reader.count(1_000_000)?;
            if !index_count.is_multiple_of(3) {
                return Err("Invalid scenery triangles");
            }
            let mut vertices = Vec::with_capacity(size);
            for _ in 0..size {
                let mut vertex = [0.; 8];
                for value in &mut vertex {
                    *value = reader.number()?;
                }
                vertices.push(vertex);
            }
            let mut indices = Vec::with_capacity(index_count);
            for _ in 0..index_count {
                let index = reader.short()?;
                if index as usize >= size {
                    return Err("Scenery vertex index outside mesh");
                }
                indices.push(index);
            }
            draws.push(Draw {
                texture,
                vertices,
                indices,
            });
        }
        scenes.push(Scene {
            id,
            background,
            camera,
            half_height,
            draws,
        });
    }
    if !reader.bytes.is_empty() {
        return Err("Unconsumed scenery bytes");
    }
    Ok(scenes)
}

pub struct SceneryArt {
    scenes: Vec<Scene>,
    current: Option<usize>,
    textures: HashMap<u16, Texture2D>,
}
impl SceneryArt {
    #[cfg(not(target_arch = "wasm32"))]
    pub fn ids(&self) -> Vec<String> {
        self.scenes.iter().map(|scene| scene.id.clone()).collect()
    }
    pub fn new() -> Self {
        Self {
            scenes: decode(DATA).expect("Invalid bundled scenery data"),
            current: None,
            textures: HashMap::new(),
        }
    }
    pub fn draw(&mut self, id: &str, width: f32, height: f32) -> bool {
        let Some(index) = self.scenes.iter().position(|scene| scene.id == id) else {
            return false;
        };
        if self.current != Some(index) {
            self.textures.clear();
            self.current = Some(index);
        }
        let scene = &self.scenes[index];
        clear_background(scene.background);
        let scale = height / (2. * scene.half_height);
        for draw in &scene.draws {
            let texture = (draw.texture != u16::MAX).then(|| {
                self.textures
                    .entry(draw.texture)
                    .or_insert_with(|| {
                        let texture = Texture2D::from_file_with_format(
                            TEXTURES[draw.texture as usize],
                            Some(ImageFormat::Png),
                        );
                        texture.set_filter(FilterMode::Linear);
                        texture
                    })
                    .clone()
            });
            let vertices = draw
                .vertices
                .iter()
                .map(|&[x, y, u, v, r, g, b, a]| {
                    Vertex::new(
                        width / 2. + (x - scene.camera.x) * scale,
                        height / 2. - (y - scene.camera.y) * scale,
                        0.,
                        u,
                        v,
                        Color::new(r, g, b, a),
                    )
                })
                .collect();
            draw_mesh(&Mesh {
                vertices,
                indices: draw.indices.clone(),
                texture,
            });
        }
        true
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[test]
    fn every_campaign_background_has_original_geometry_and_camera() {
        let scenes = decode(DATA).unwrap();
        assert_eq!(scenes.len(), 60);
        assert_eq!(TEXTURES.len(), 64);
        assert_eq!(scenes.iter().map(|s| s.draws.len()).sum::<usize>(), 4319);
        for encounter in epic_core::ENCOUNTERS {
            let scene = scenes
                .iter()
                .find(|s| s.id == encounter.background_asset_id)
                .unwrap();
            assert!(!scene.draws.is_empty());
            assert_eq!(scene.half_height, 384.);
        }
    }
    #[test]
    fn rejects_truncated_and_corrupt_bundled_geometry() {
        for end in [0, 8, 12, DATA.len() / 2, DATA.len() - 1] {
            assert!(decode(&DATA[..end]).is_err());
        }
        let mut bytes = DATA.to_vec();
        bytes[8..12].copy_from_slice(&u32::MAX.to_le_bytes());
        assert!(decode(&bytes).is_err());
        assert!(decode(&[DATA, &[0]].concat()).is_err());
    }
}
