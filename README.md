# Hash Maker

https://hash.jedbillyb.com

Type a word or a name and get its hash, cut to any length, then copy it. Hash type (SHA-256, SHA-1, SHA-512, MD5) and letter style are under Advanced options.

**Find the word from a hash:** tap Paste (or type or paste a hash into the box) and it searches straight away. It finds:

- one word or name from a list of 465,000 (names first, then the full English dictionary), in lowercase, Capitalised or CAPS
- two first names joined by and, &, +, x, loves, a space or nothing, like "Jed and Rylee", from the 1,000 most popular first names

Hashes can't really be reversed, so anything else (a full sentence, a typo, a made-up word) can't be found. When you make a hash, the line under it says whether it can be found again.

Everything runs in the browser. Nothing you type is sent anywhere.

## Files

- `site/index.html` is the whole page. SHA hashes for the top box use Web Crypto. The reverse search uses small JS hash functions (in the `wsrc` script) running in Web Workers, because Web Crypto is too slow for half a million words.
- `site/words-2.txt` is the word list, names first: Jed and Rylee, two first-name lists, surnames, the 10,000 most common English words, then the full English dictionary (dwyl/english-words). The two-name pool (1,000 most popular US first names since 1950, from hadley/data-baby-names, with Jed and Rylee first) is inside index.html. Change the number in the word list filename when the list changes, so Cloudflare doesn't serve an old copy.

Deploy with `./deploy.sh` (rsync to OCI, nginx vhost `hash`, Cloudflare in front).
