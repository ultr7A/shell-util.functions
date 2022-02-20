#!/bin/bash


##########################################################
#  Installation
#

## Config:
source  ../config/tool_path.sh; 

## Install helper:
function __install_toolset__() {
        cd "$1";
                for FILE in *; do echo "installing file: $(pwd)/$FILE"; done
                for FILE in *; do sudo ln -s "$(pwd)/$FILE" "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
                for FILE in *; do sudo chmod 775            "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        cd "../" 
}

## Core:
if [ ! -d "$__SHELL_UTIL__INSTALL_PATH/file_search" ] 
then
        echo "* Installing shell-util.functions *"
        echo "*          __SHELL_UTIL__INSTALL_PATH=$__SHELL_UTIL__INSTALL_PATH";


        ## Create   [ User-specific configuration directory: ]
        mkdir -p ~/.config/shell-util.functions
        cp "../config/tool_path.sh" ~/.config/shell-util.functions/tool_path.sh;
        cp "../config/user_path.sh" ~/.config/shell-util.functions/user_path.sh;


        __install_toolset__ "../bin/data";
        __install_toolset__ "../bin/control";
          
        cd ../install;

        ## Update   [      ~/.bashrc  ]
        source      ./update-bashrc.sh;
fi
 
#
#
##########################################################