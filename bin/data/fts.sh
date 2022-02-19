#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function fts() {
	leftCut=$3;
	if [ -z $3 ];then
		leftCut="25-";
	fi
   	clear 	                    &&
   	find       $1 -type f -exec egrep -i -IH -A3 -B1   \
                                     --color "'$2'" {} \;
#        | cut   -c $leftCut;
}