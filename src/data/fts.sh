#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function fts() {				## SHELL_UTIL.FUNCTION ##	
	
	export leftCut="$3";
	export SEARCH_PATH="$2";

	if [ -z "$3" ]
	then
		leftCut="25-";
		if [ -z "$2" ]
		then
			SEARCH_PATH="$(pwd)";
		fi
	
	fi

	if [ $# -eq 0 ]
	then
		echo "Command requires at minimum, a 'search phrase'."
	fi

   	#clear 	                    &&
   	find       "$SEARCH_PATH" -type f -exec egrep -i -IH -A3 -B1 --color "'$1'" {} \;
#        | cut   -c $leftCut;
}								## SHELL_UTIL.FUNCTION ##