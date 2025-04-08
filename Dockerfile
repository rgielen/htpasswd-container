FROM alpine:latest

# docker buildx create --name multi-arch-builder --use
# docker buildx build --platform linux/amd64,linux/arm64 --tag rgielen/htpasswd .

RUN set -eux; \
    apk add --no-cache \
        apache2-utils \
        && rm -rf /var/cache/apk/*
