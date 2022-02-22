#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔


function file_search() {		## SHELL_UTIL.FUNCTION ##
	echo find . | egrep -iE $1;	
}								## SHELL_UTIL.FUNCTION ##