# Hash Maker

https://hash.jedbillyb.com

Type a word or a name and get its hash, cut to any length, then copy it. Hash type (SHA-256, SHA-1, SHA-512, MD5) and letter style are under Advanced options.

**Find the word from a hash:** tap Paste (or type or paste a hash into the box) and it searches straight away. It checks 465,000 words and names, each in lowercase, Capitalised and CAPS, against all four hash types. Hashes can't really be reversed, so this only finds words that are on the list. Full or cut-short hashes, hex or Base64.

Everything runs in the browser. Nothing you type is sent anywhere.

## Files

- `site/index.html` is the whole page. SHA hashes for the top box use Web Crypto. The reverse search uses small JS hash functions (in the `wsrc` script) running in Web Workers, because Web Crypto is too slow for half a million words.
- `site/words-1.txt` is the word list, names first: common Māori names, two first-name lists, surnames, the 10,000 most common English words, then the full English dictionary (dwyl/english-words). Change the number in the filename when the list changes, so Cloudflare doesn't serve an old copy.

Deploy with `./deploy.sh` (rsync to OCI, nginx vhost `hash`, Cloudflare in front).
