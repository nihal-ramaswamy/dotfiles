#!/bin/bash
function cpt() {
	for i in "$@";
	do 
		mkdir -p $i
		cp ~/cp/template.cpp $i/$i.cpp;
	done
}

function cpb() {
	fileName=$1
	g++ -std=c++20 -DDEBUG -O2 -Wall -Wshadow -Wextra -Wno-unused-result -Wfloat-equal -Wcast-qual -Wcast-align -Wl,-stack_size,0x10000000 -g -fstack-protector -D_GLIBCXX_DEBUG $fileName -o ${fileName%.cpp}
}
