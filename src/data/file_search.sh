#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔


function file_search() {		## SHELL_UTIL.FUNCTION ##
	
	if [[ ! -z "$2" ]]; then
		pushd "$2"
	fi 


	find . | egrep -iE "$1";	


	if [[ ! -z "$2" ]]; then
		popd
	fi

}								## SHELL_UTIL.FUNCTION ##