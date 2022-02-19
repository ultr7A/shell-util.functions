#!/bin/bash


##########################################################
#  Un-installation  
#

##      Config:
source  ../config/tool_path.sh; 


##      Operations:
echo "** Removing [shell-util.functions from .bashrc]       **";
sed -e   "s|.*shell-util.functions )$||"   -i ~/.bashrc;

echo "** Removing [scripts from installation directory]     **";     
sudo rm "$__SHELL_UTIL__INSTALL_PATH/main.sh";
# for FILE in bin/control/*; do sudo rm "$__SHELL_UTIL__INSTALL_PATH/$FILE"; done
for FILE in bin/data/*;    do sudo rm "$__SHELL_UTIL__INSTALL_PATH/$FILE"; done


#
#
##########################################################