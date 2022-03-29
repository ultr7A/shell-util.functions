#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function __ls_recent_commands() {               ## SHELL_UTIL.FUNCTION ##
    export entries="$2"
    if [ -z $2 ];then
	    export entries="1";
	fi
    __ls_commands $1 | tail -n "$entries" 
}                                               ## SHELL_UTIL.FUNCTION ##