#!/bin/bash
#

# Update .bashrc:
export SHELL_UTIL_INSTALLED=$(cat ~/.bashrc | grep "source $__SHELL_UTIL__INSTALL_PATH")
if [ -z "$SHELL_UTIL_INSTALLED" ]
then
    echo "** Adding [shell-util.functions to .bashrc]    **";
    echo $(cat "$HOME/.bashrc" | tail -n 4);

    echo -e   'source "/usr/local/bin/shell-util/main.sh"              ## Load( shell-util.functions )' >> ~/.bashrc;
    echo -e   'source "/usr/local/bin/shell-util/config/user_path.sh"  ## Load( shell-util.functions )' >> ~/.bashrc;

    echo $(cat "$HOME/.bashrc" | tail -n 4);
    echo -e   "Done.\n"
fi