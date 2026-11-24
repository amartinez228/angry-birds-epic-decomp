use epic_core::metadata::Metadata;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut args = std::env::args().skip(1);
    let path = args
        .next()
        .ok_or("Usage: inspect-metadata PATH [class-name-fragment]")?;
    let query = args.next().unwrap_or_else(|| "ClassItem".into());
    let data = std::fs::read(path)?;
    let metadata = Metadata::parse(&data)?;
    let (types, methods) = metadata.counts()?;
    println!("IL2CPP v23: {types} types; {methods} methods");
    for item in metadata.find(&query)? {
        println!("{}.{}", item.namespace, item.class);
        for field in item.fields {
            println!("  field {field}");
        }
        for method in item.methods {
            println!("  method {method}");
        }
    }
    Ok(())
}
