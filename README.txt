===============================================================================
WYRICS                                                          Git some lyrics
===============================================================================

Fetch lyrics for a song from lyrics.ovh with this script.

This used to use songlyrics.com-- and before that, lyrics.wikia.com.
songlyrics.com has more flexible searching (you could make typos), but it
is a pretty slow site.

lyrics.ovh is a good deal faster, but much more picky.

----------------------------------------
PRE-REQUISITES
----------------------------------------
You'll need:
	* curl
	* a shell 

----------------------------------------
USAGE
----------------------------------------
WYRICS
--------------------
Just run "wyrics" like so:

	wyrics $ARTIST $SONG

If you want to save lyrics to a file, you'll need to redirect the
output--
	$ wyrics "dream theater" "octavarium" > lyrics.txt


WYDIR
--------------------
Runs "wyrics" over every song in a directory of a given file-extension.
The lyrics are output to "$song.txt"

Just run "wydir" like so:

	wydir $ARTIST $FILE_EXTENSION

Convenient if you wanna get the lyrics of an album in one go. 


----------------------------------------
BORING STUFF
----------------------------------------
License is CC-0 
Author is Jaidyn Ann <jadedctrl@teknik.io>
Sauce is at https://git.feneas.org/detruota/wyrics.git
