#!/bin/bash

##########################################################
#  Un-installation  
#


##      Config:
source  ../config/tool_path.sh; 

##      Operations:
echo "** Removing [shell-util.functions from .bashrc]       **";
sed -e   "s|.*shell-util.functions $||"   -i ~/.bashrc;

      
echo "** Removing [scripts from installation directory]     **";
export fullPath="$(pwd)";

cd ../bin/data;
        for File in *; do echo                        "rm $(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm                             "$(echo $FILE | sed -e 's|\.sh||')"; done
        
cd ../control;
        for File in *; do echo                        "rm $(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        for FILE in *; do rm                             "$(echo $FILE | sed -e 's|\.sh||')"; done


## Remove user-specific configuration:   [would be nice to switch on/off with a script param]
echo "** Removing [user configuration] **";
rm -rf ~/.config/shell-util.functions

#
#
##########################################################