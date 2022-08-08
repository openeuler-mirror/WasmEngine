use anyhow::Result;
use flate2::read;
use oci_distribution::{manifest, secrets::RegistryAuth, Client, Reference};
use tar::Archive;
use tracing::info;

pub fn build_client_config(insecure: bool) -> oci_distribution::client::ClientConfig {
    let protocol = if insecure {
        oci_distribution::client::ClientProtocol::Http
    } else {
        oci_distribution::client::ClientProtocol::Https
    };

    oci_distribution::client::ClientConfig {
        protocol,
        ..Default::default()
    }
}

pub async fn pull_wasm(
    client: &mut Client,
    auth: &RegistryAuth,
    reference: &Reference,
    output: &str,
) -> Result<()> {
    info!(?reference, ?output, "pulling wasm module");

    let image_content = client
        .pull(
            reference,
            auth,
            vec![manifest::IMAGE_DOCKER_LAYER_GZIP_MEDIA_TYPE],
        )
        .await
        .map_err(|err| anyhow::format_err!("Cannot pull Wasm module {}", err))?
        .layers
        .into_iter()
        .next()
        .map(|layer| layer.data)
        .ok_or(anyhow::format_err!("No data found"))?;

    // webassembly oci spec definition: https://github.com/solo-io/wasm/spec
    // for IMAGE_DOCKER_LAYER_GZIP_MEDIA_TYPE, we need to unzip iamge_content
    // into raw wasm file
    let gz = read::GzDecoder::new(&image_content[..]);
    let mut archive = Archive::new(gz);
    archive
        .unpack(output)
        .map_err(|err| anyhow::format_err!("Cannot write to file: {}", err))?;

    info!("Wasm module successfully written to {}", output);
    Ok(())
}
