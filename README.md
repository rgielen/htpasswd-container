# htpasswd Tool Image

Simple Alpine based container image with `htpasswd` installed.

As default, a small script takes environment variables to configure `htpasswd` call.

Source: https://github.com/rgielen/htpasswd-container⁠

Usage:

```bash
# Create new file
docker run --rm \
    -v $PWD:/auth/ \
    -e HTPASSWD_FILE="/auth/my.htpassword" \
    -e HTPASSWD_OPTS="-Bbc" \
    -e HTPASSWD_USER="user" \
    -e HTPASSWD_PASSWORD="s3cr3t" \
    rgielen/htpasswd
```

Usage with `htpasswd`:

```bash
# Create new file
docker run --rm --entrypoint htpasswd rgielen/htpasswd -bc <passwordfile> </passwordfile> <user> <password>

# Append to existing file
docker run --rm --entrypoint htpasswd rgielen/htpasswd -b <passwordfile> </passwordfile> <user> <password>

# Print to stdout
docker run --rm --entrypoint htpasswd rgielen/htpasswd -bn <user> <password>
```
