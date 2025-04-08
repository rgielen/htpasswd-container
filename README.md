# htpasswd Tool Image

Simple Alpine based container image with htpasswd installed.

Usage:

```bash
# Create new file
docker run --rm -ti rgielen/htpasswd -c <passwordfile> </passwordfile> <user> <password>

# Append to existing file
docker run --rm -ti rgielen/htpasswd <passwordfile> </passwordfile> <user> <password>

# Print to stdout
docker run --rm -ti rgielen/htpasswd -n <user> <password>
```
