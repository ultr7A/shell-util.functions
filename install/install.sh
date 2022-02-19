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
        sudo mkdir -p "$__SHELL_UTIL__INSTALL_PATH";
        sudo ln -s "../main.sh" "$__SHELL_UTIL__INSTALL_PATH/main.sh";
        
        # for FILE in bin/control/*; do sudo ln -s $FILE "$__SHELL_UTIL__INSTALL_PATH/$FILE"; done
        for FILE in bin/data/*;    do sudo ln -s $FILE "$__SHELL_UTIL__INSTALL_PATH/$FILE"; done


        ## Update   [      ~/.bashrc  ]
        source      ./update-bashrc.sh;
fi
 
#
#
##########################################################