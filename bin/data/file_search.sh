#!/bin/bash
#▔▔▔▔▔▔▔▔▔▔▔


function file_search() {
	echo find . | egrep -iE $1;
}