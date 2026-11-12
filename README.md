# Hash Maker

https://hash.jedbillyb.com

Type a word or a name and get its hash (SHA-256, SHA-1, SHA-512 or MD5), cut to any length, then copy it. Tick "One hash per line" to hash a list of names at once. Everything runs in the browser.

The whole site is `site/index.html`. SHA hashes use Web Crypto; MD5 is a small function in the page.

Deploy with `./deploy.sh` (rsync to OCI, nginx vhost `hash`, Cloudflare in front).
