#!/bin/sh
########################################
# name: mp
# desc: front-end to MPV that displays
#       lyrics text-files before playing
#       a song.
# main: Jenga Phoenix
#       <jadedctrl@teknik.io>
# lisc: CC 0
########################################

trap "" 2


#---------------------------------------
# generic

# STRING --> STRING
# Return the first 'word' (space-delimiter) of a string.
function car {
	local string="$1"

	echo "$string" \
	| awk '{ print $1 }'
}

# STRING --> STRING
# Return all words after the first word of a string.
function cdr {
	local string="$1"

	local car="$(car "$string")"

	if test $(length "$string") -eq 1; then
		echo ""
	else
		echo "$string" \
		| sed 's/^'"$car"' //'
	fi
}

# STRING --> NUMBER
# Return the length of a string.
function length {
	local string="$1"

	echo "$string" \
	| wc -w \
	| tr -d ' '
}

# NUMBER NUMBER --> NUMBER
# Add two numbers together.
function add {
	operator="$1"
	operatee="$2"

	echo "$1 + $2" \
	| bc
}



# --------------------------------------

# NIL --> NUMBER
# Return the amount of total items.
function total_items {
	add "$(length "$DISCARD")" "$(length "$ITEMS")"
}

# NIL --> NUMBER
# Return the amount of discarded items.
function discarded_items {
	echo "$(length "$DISCARD")"
}



# --------------------------------------

# NUMBER --> NIL
# Handle the return code of `mpv` properly, according
# to the cause.
function handle_return {
	local return=$1

	case $return in
		4)	# ^C
			# rewind one file <<
			ITEMS="$(car "$DISCARD") $ITEMS"
			DISCARD="$(cdr "$DISCARD")"
			;;
		0)	# normal
			# put current file to discard
			DISCARD="$(car "$ITEMS") $DISCARD"
			ITEMS="$(cdr "$ITEMS")"
			;;
		2)	# no file
			# don't even discard it-- BURN IT
			ITEMS="$(cdr "$ITEMS")"
			;;
	esac
}



# --------------------------------------
# invocation

DISCARD=""
ITEMS="$@"

while test -n "$ITEMS"; do
	local item="$(car "$ITEMS")"

	cat "${item}.txt" 2> /dev/null
	echo "===$(discarded_items)/$(total_items)==="
	mpv "$item"

	return=$?
	handle_return "$return"
done
