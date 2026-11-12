# Hash Maker

https://hash.jedbillyb.com

Type a word or a name and get its hash, cut to any length, then copy it. Hash type (SHA-256, SHA-1, SHA-512, MD5) and letter style are under Advanced options. Everything runs in the browser.

The whole site is `site/index.html`. SHA hashes use Web Crypto; MD5 is a small function in the page.

Deploy with `./deploy.sh` (rsync to OCI, nginx vhost `hash`, Cloudflare in front).
