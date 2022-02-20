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
sudo rm -rf  "$__SHELL_UTIL__INSTALL_PATH";

## Remove user-specific configuration:   [would be nice to switch on/off with a script param]
echo "** Removing [user configuration] **";
rm -rf ~/.config/shell-util.functions



#
#
##########################################################