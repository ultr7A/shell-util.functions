#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function recent() {                             ## SHELL_UTIL.FUNCTION ##
    $(__ls_recent_commands $1);    
}                                               ## SHELL_UTIL.FUNCTION ##