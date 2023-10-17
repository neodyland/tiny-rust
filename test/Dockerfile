FROM rust:latest AS builder
WORKDIR /ws
COPY . .
RUN cargo build --release
FROM googlefan25/amd64-tiny-rust:latest
COPY --from=builder /ws/target/release/test /usr/local/bin/
CMD ["test"]