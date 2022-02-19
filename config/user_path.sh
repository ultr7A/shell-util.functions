#/bin/bash

#PATH:
	# 
	export GOPATH="/home/$(whoami)/3_0_ OPERATION/System/go";
	export GOBIN="$GOPATH/bin"
	#    ⛅ 🚁~~ ~ ~   ~    ~      
    #       / ' \  
    #      /  '  \   
	# ____╱   |   ╲________________________________________              /   
	export PATH="$PATH:/home/$(whoami)/.cargo/bin";
	export PATH="$PATH:/home/$(whoami)/Android/Sdk/platform-tools";
	export PATH="$PATH:$GOPATH:$GOBIN";
