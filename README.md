# Wyrics

Shell script for fetching a song’s lyrics from [lyrics.ovh](https://lyrics.ovh).

Previously, this used to use [songlyrics.com](https://songlyrics.com) — and
before that, [lyrics.wikia.com](https://lyrics.wikia.com). At least, until
lyrics.wikia.com was axed for copyright-related reasons.

songlyrics.com had more flexible searching (you could make typos), but it
was a pretty slow site. lyrics.ovh is a good deal faster, but much more picky.
It’s also libre, and beautiful.  
Check out [lyrics.ovh’s repo](https://github.com/NTag/lyrics.ovh)!


## Installation
Simply copy wydir and wyrics into your `$PATH`; somewhere like `/usr/local/bin` or
`~/.local/bin`.  
`$ cp wydir wyrics ~/.local/bin/`


## Dependencies
You’ll need:
* [curl](https://curl.se)
* Shell (ksh, bash)


## Usage
### Wyrics
Run `wyrics` like so, replacing “$ARTIST” and “$SONG” with your artist and song,
respectively:

`$ wyrics $ARTIST $SONG`

If you want to save lyrics to a file, you’ll need to redirect the
output:

`$ wyrics "dream theater" "octavarium" > lyrics.txt`


### Wydir
Wydir runs `wyrics` over every song in a directory of a given file-extension.
Each song’s lyrics are written to a `.txt` file of the song’s name.

Just run `wydir` like so:

`$ wydir $ARTIST $FILE_EXTENSION`

It’s convenient if you wanna get the lyrics of an album in one go.


## Meta
License is CC0.  
Author is Jaidyn Ann <jadedctrl@posteo.at>  
Sauce is at https://hak.xwx.moe/jadedctrl/wyrics
