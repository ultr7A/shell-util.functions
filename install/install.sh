#!/bin/bash


##########################################################
#  Installation
#

## Config:
source  ../config/tool_path.sh; 

echo "Installer:  Working directory: $(pwd)";

## Install helpers:
function __convert_function_to_command__() {
        echo "converting function to command: bin/$1";
        export COMMAND_NAME="$(echo $1 | sed -e 's|\.sh||')";
        cp $1 "$COMMAND_NAME";
        
        echo -e "\ncommand: $COMMAND_NAME";
        sed -e 's|.*SHELL_UTIL.FUNCTION||' -i "$COMMAND_NAME";
        echo "output: ";
        cat "$COMMAND_NAME";

        mv "$COMMAND_NAME" "../../bin/$2/$COMMAND_NAME"
}

function __install_toolset__() {
        cd "$2";
                for FILE in *; do __convert_function_to_command__ $FILE $1; done
                #for FILE in *; do sudo ln -s       "bin/$(echo $FILE | sed -e 's|\.sh||')" "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
                #for FILE in *; do sudo chmod 775                                           "$__SHELL_UTIL__INSTALL_PATH/$(echo $FILE | sed -e 's|\.sh||')"; done
        cd "../" 
}


## Core:
if [ ! -d "$__SHELL_UTIL__INSTALL_PATH/file_search" ] 
then
        echo "* Installing shell-util.functions *"
        echo "*          __SHELL_UTIL__INSTALL_PATH=$__SHELL_UTIL__INSTALL_PATH";


        ## Create   [ User-specific configuration directory: ]
        mkdir -p ~/.config/shell-util.functions
        cp "config/tool_path.sh" ~/.config/shell-util.functions/tool_path.sh;
        cp "config/user_path.sh" ~/.config/shell-util.functions/user_path.sh;


        __install_toolset__ "data"    "../src/data";
        __install_toolset__ "control" "../src/control";
          
        cd ./install;

        ## Update   [      ~/.bashrc  ]
        source      ./update-bashrc.sh;
fi
 
#
#
##########################################################