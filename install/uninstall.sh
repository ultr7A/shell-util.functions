#!/bin/bash

##########################################################
#  Un-installation  
#


## Config:

### Installer Config:
source  ../config/tool_path.sh;

### Application Config: 
if [[ -z "$SUDO_USER" ]]; then
        export __USER_HOME="/home/$SUDO_USER";
else
        export __USER_HOME="/root";
fi

echo -e "Uninstalling shell-util.functions";
echo "user:                   $__USER_HOME";
echo "installation directory: $__SHELL_UTIL__INSTALL_PATH";
##      Operations:
echo "** Removing [shell-util.functions from .bashrc]       **";
sed -e   "s|.*shell-util.functions $||"   -i ~/.bashrc;

      
echo "** Removing [scripts from installation directory]     **";
export fullPath="$(pwd)";

cd ../bin/data;
        for File in *; do echo  "rm  $__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do        rm "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for File in *; do echo                               "rm $(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm                                    "$(echo $FILE | sed -e 's|\.sh||')"; done
        
cd ../control;
        for File in *; do echo  "rm  $__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do        rm "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for File in *; do echo                               "rm $(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm                                    "$(echo $FILE | sed -e 's|\.sh||')"; done


## Remove user-specific configuration:   [would be nice to switch on/off with a script param]
echo -e "** Removing [user configuration] **\n";
rm -rf ~/.config/shell-util.functions


source "../../install/helpers/done_hr";

#
#
##########################################################