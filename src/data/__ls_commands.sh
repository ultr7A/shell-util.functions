#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function __ls_commands() {                      ## SHELL_UTIL.FUNCTION ##
    cat ~/.bash_history  |  egrep -iE "$1"  |  sed -e 's|classic .*||'  |  sed -e 's|recent .*||'  |  sed -e 's|__ls_recent_commands.*||'  |  tr -s '\n'
}                                               ## SHELL_UTIL.FUNCTION ##