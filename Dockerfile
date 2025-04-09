FROM alpine:latest

# docker buildx create --name multi-arch-builder --use
# docker buildx build --platform linux/amd64,linux/arm64 --push --tag rgielen/htpasswd .

RUN set -eux; \
    apk add --no-cache \
        apache2-utils \
        && rm -rf /var/cache/apk/*

COPY passbyenv /usr/local/bin/

ENV HTPASSWD_FILE="/htpasswd.txt"
ENV HTPASSWD_OPTS="-Bbc"
ENV HTPASSWD_USER="admin"
ENV HTPASSWD_PASSWORD="ChangeMePrettyPlease111"

ENTRYPOINT ["passbyenv"]