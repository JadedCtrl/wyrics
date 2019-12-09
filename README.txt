===============================================================================
WYRICS                                                          Git some lyrics
===============================================================================

Fetch lyrics for a song from lyrics.fandom.com with this script.
You can fetch them by search queries, or by their URL.



----------------------------------------
PRE-REQUISITES
----------------------------------------
You'll need:
	* "gendl" in your $PATH
	* a POSIX-compatible shell (tested with `pdksh` and `bash`)
	* "curl", "wget", or "ftp" installed
	* "lynx" installed



----------------------------------------
USAGE
----------------------------------------

WYRICS
--------------------
Just run "wyrics" like so:

	wyrics -s "query"
	wyrics -u page_url

If you use the "-u" option, the lyrics will just be printed to stdout.

If you decide to use "-s", though, search results'll be displayed to your
screen (via stderr)-- each numbered from 1-10.
Just type a number, hit enter, and the lyrics'll pop up.

	$ wyrics -s "boston"
	1       Boston
	2       Sonny:We're Better Than Boston
	3       Boston Manor:FY1
	4       Boston Manor:Halo
	5       Boston Manor:Wolf
	6       Boston Manor:Stick Up
	7       Boston Manor:If I Can't Have It No One Can
	8       Boston Manor:Square One
	9       Boston Manor:Driftwood
	10      Boston Manor:Forget Me Not
	>>


If you want to save lyrics to a file, you'll need to redirect the
output-- "wyrics -s 'bob' > BOB.txt"

--------------------


... however, I've also included some more scripts that'll help make wyrics
and listening to music with lyrics more convenient:


WYDIR
--------------------
Runs "wyrics" over every song in a directory of a given file-extension.
The lyrics are output to "$song.txt"

Just run "wydir" like so:

	wydir file-ext [prefix]

file-ext        should be the file-extension of songs in the current dir.
prefix          should be a prefix to search results to help make them
                more accurate-- like, for example, the band-name, the
                album, etc.

This is really convenient if you wanna get the lyrics of an album in
one go. =w=


MP
--------------------
MP is a font-end to the music-player MPV.
What MP does, is that before a song is played, it tries to "cat" it's
lyrics file (assumed to be like "song.ogg.txt"), then executes MPV.

Since it executes MPV once for every song passed, you're probably wondering
how you could seek back or forward a song.

Normally you'd use "<" or ">", but with MP, just use CTRL-C and "Q".

The escape-code of CTRL-C (4) is caught by MP, and interpreted to mean you
wanna go back a song.

The regular escape-code of "Q" (0) is caught, and interpreted to mean you
want to skip to the next song.



----------------------------------------
BORING STUFF
----------------------------------------
License is CC-0 (though, "gendl" is GPLv3)
Author is Jaidyn Ann <jadedctrl@teknik.io>
Sauce is at https://git.eunichx.us/wyrics.git
