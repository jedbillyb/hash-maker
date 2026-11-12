#!/bin/sh
# Copies site/ to hash.jedbillyb.com (OCI, nginx vhost /etc/nginx/sites-available/hash).
# Everything is inline in index.html, so there is no cache busting to do.
set -e
cd "$(dirname "$0")"
rsync -a --delete --chmod=D755,F644 site/ oci:/var/www/hash/
echo "deployed $(git rev-parse --short HEAD 2>/dev/null)"
