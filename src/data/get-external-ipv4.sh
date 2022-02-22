#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔

function get_external_ipv4() {                                                      ## SHELL_UTIL.FUNCTION ##
    echo ip address | egrep -e '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/24'  | cut -c 10- | sed -e 's|/24\sbrd\s.*$||';
}                                                                                   ## SHELL_UTIL.FUNCTION ##