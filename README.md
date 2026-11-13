# Hash Maker

https://hash.jedbillyb.com

Type a word or a name and get its hash, cut to any length (or a standard one: 7, 8, 12, 16, 32 or full), then copy it. Hash type (SHA-256, SHA-1, SHA-512, MD5) and letter style are under Advanced options.

**Find the word(s) from a hash:** tap Paste (or type or paste a hash into the box) and it searches straight away. It finds:

- one word or name from a list of 810,000, in lowercase, Capitalised or CAPS
- two common words or names joined by and, &, +, x, loves, a space or nothing, like "black and white", from the 1,000 most used spoken English words and the 1,000 most popular first names. A cut-short hash only gets this two-word search for MD5, SHA-1 and SHA-256, because SHA-512 is too slow.

Hashes can't really be reversed, so anything else (a full sentence, a typo, a made-up word) can't be found. When you make a hash, the line under it says whether it can be found again.

Everything runs in the browser. Nothing you type is sent anywhere.

## Files

- `site/index.html` is the whole page. SHA hashes for the top box use Web Crypto. The reverse search uses small JS hash functions (in the `wsrc` script) running in Web Workers, because Web Crypto is too slow for half a million words.
- `site/words-3.txt` is the word list: common contractions, US baby names (hadley/data-baby-names), two more first-name lists, surnames, the 10,000 most common English words, everyday words from film subtitles (hermitdave/FrequencyWords, used 3+ times), then the full English dictionary (dwyl/english-words).

Deploy with `./deploy.sh` (rsync to OCI, nginx vhost `hash`, Cloudflare in front).
