#!/bin/bash
function cpt() {
	for i in "$@";
	do 
		mkdir -p $i
		cp ~/.config/cp/template.cpp $i/$i.cpp;
	done
}

function cpr() {
	fileName=$1
	ulimit -s unlimited
	g++ -Wall -Wextra -Wconversion -DONLINE_JUDGE -O2 -std=c++20 $fileName -o ${fileName%.cpp}
}

function cpb() {
	fileName=$1
	ulimit -s unlimited
	g++ -std=c++20 -DDEBUG -O2 -Wall -Wshadow -Wextra -Wno-unused-result -Wfloat-equal -Wcast-qual -Wcast-align -g -fstack-protector -D_GLIBCXX_DEBUG $fileName -o ${fileName%.cpp}
}

function stress() {
	for ((i = 1; ; i++)); do 
		fileName=$1
		echo $i 
		python3 stress.py > in1
		./$fileName < in1 > out1 
		./brute < in1 > out2 
		diff -w out1 out2 || break 
	done
}



function stress_py() {
	for ((i = 1; ; i++)); do 
		fileName=$1
		echo $i 
		python3 stress.py > in1
		./$fileName < in1 > out1 
		python3 brute.py < in1 > out2 
		diff -w out1 out2 || break 
	done
}
