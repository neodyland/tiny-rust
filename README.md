# Tiny Rust
The smallest docker image with `openssl-sys` `native-tls` support.  
Works on `linux/amd64` `linux/arm64`.  
Smaller then `ghr.io/distroless/base`!!
# Building by yourself
## arm64
`docker build . --file aarch64.Dockerfile --platform linux/arm64 --tag $YOU_IMAGE_TAG_HERE`
## x86_64
`docker build . --file x86_64.Dockerfile --platform linux/amd64 --tag $YOU_IMAGE_TAG_HERE`
