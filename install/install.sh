#!/bin/bash


##########################################################
#  Installation
#

## Config:
source  ../config/tool_path.sh; 

## Core:
if [ ! -d "$__SHELL_UTIL__INSTALL_PATH" ] 
then
        echo "* Installing shell-util.functions *"
        echo "*          __SHELL_UTIL__INSTALL_PATH=$__SHELL_UTIL__INSTALL_PATH";


        ## Create   [ User-specific configuration directory: ]
        mkdir -p ~/.config/shell-util.functions
        cp "../config/tool_path.sh" ~/.config/shell-util.functions/tool_path.sh;
        cp "../config/user_path.sh" ~/.config/shell-util.functions/user_path.sh;


        cd ../bin/data;
        for FILE in *; do sudo ln -s $FILE "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
       
        cd ../control;
        for FILE in *; do sudo ln -s $FILE "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        
        cd ../../install;

        ## Update   [      ~/.bashrc  ]
        source      ./update-bashrc.sh;
fi
 
#
#
##########################################################