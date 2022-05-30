#!/bin/bash
#

# Update .bashrc:
export SHELL_UTIL_INSTALLED=$(cat ~/.bashrc | grep "source $__SHELL_UTIL__INSTALL_PATH")
if [ -z "$SHELL_UTIL_INSTALLED" ]
then
    # echo "** Adding [shell-util.functions to .bashrc]    **";
    
    # echo -e   'source "~/.config/shell-util.functions/alias.sh"      ## Load( shell-util.functions )' >> ~/.bashrc;
    # echo -e   'source "~/.config/shell-util.functions/user_path.sh"  ## Load( shell-util.functions )' >> ~/.bashrc;

    echo -e "* [Skipping .bashrc customisations] \n" 
fi