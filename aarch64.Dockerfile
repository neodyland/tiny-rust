FROM --platform=linux/arm64 debian:bookworm AS base
RUN apt-get update && apt-get install -y libssl-dev ca-certificates openssl
FROM --platform=linux/arm64 scratch
COPY --from=base /lib/aarch64-linux-gnu/libssl.so.3 /lib/aarch64-linux-gnu/libssl.so.3
COPY --from=base /lib/aarch64-linux-gnu/libssl.so.1.1 /lib/aarch64-linux-gnu/libssl.so.1.1
COPY --from=base /lib/aarch64-linux-gnu/libgcc_s.so.1 /lib/aarch64-linux-gnu/libgcc_s.so.1
COPY --from=base /lib/aarch64-linux-gnu/libm.so.6 /lib/aarch64-linux-gnu/libm.so.6
COPY --from=base /lib/aarch64-linux-gnu/libc.so.6 /lib/aarch64-linux-gnu/libc.so.6
COPY --from=base /lib/aarch64-linux-gnu/libcrypto.so.3 /lib/aarch64-linux-gnu/libcrypto.so.3
COPY --from=base /lib/ld-linux-aarch64.so.1 /lib/ld-linux-aarch64.so.1
COPY --from=base /etc/ssl/certs /etc/ssl/certs
