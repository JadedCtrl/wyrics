===============================================================================
WYRICS                                                          Git some lyrics
===============================================================================

Fetch lyrics for a song from lyrics.wikia.com with this script.
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



----------------------------------------
BORING STUFF
----------------------------------------
License is CC-0 (though, "gendl" is GPLv3)
Author is Jenga Phoenix <jadedctrl@teknik.io>
Sauce is at https://git.eunichx.us/wyrics
