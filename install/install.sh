#!/bin/bash


#  ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
#  Installation
# 

## Config:

### Installer Config:
source  ../config/tool_path.sh;


## Install helpers:
function __convert_function_to_command__() {
        export COMMAND_NAME="$(echo $1 | sed -e 's|\.sh||')";
        cp $1 "$COMMAND_NAME";
        
        sed -e 's|.*SHELL_UTIL.FUNCTION||' -i "$COMMAND_NAME";
       
        mv "$COMMAND_NAME" "../../bin/$2/$COMMAND_NAME";
        echo                            "$COMMAND_NAME";

}

function __install__tool__() {
        sudo ln -s "$1/bin/$2/$3" "$4/$3" && sudo chmod 775 "$4/$3"
}

function __install_toolset__() {
        cd "$2";
                for FILE in *; do export CMD_NAME="$(__convert_function_to_command__ $FILE $1)" && __install__tool__ "$3" "$1" "$CMD_NAME"   "$__SHELL_UTIL__INSTALL_PATH"; done
        
        cd "../../" 
}


## Core:
if [ ! -d "$__SHELL_UTIL__INSTALL_PATH/file_search" ] 
then
        echo -e "\n* Installing shell-util.functions *"
        echo      "*          __SHELL_UTIL__INSTALL_PATH=$__SHELL_UTIL__INSTALL_PATH";
        
        cd ../
        __install_toolset__ "data"    "src/data"    "$(pwd)";
        __install_toolset__ "control" "src/control" "$(pwd)";
        
        cd ./install;

fi

source "./helpers/done_hr";


#   ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░