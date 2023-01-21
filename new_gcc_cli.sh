#!/bin/bash

name="$1"
file_name_ok=0

if [ -e "$name" ]; then
	echo "cannot create $name: file already exists!"
	exit
else
	echo "creating new CLI app directory structure in /$name."
fi

echo "mkdir ./$name"
mkdir ./$name

echo "cd $name"
cd $name

echo "mkdir ./src"
mkdir ./src

echo "mkdir ./obj"
mkdir ./obj

echo "mkdir ./gccmesg"
mkdir ./gccmesg

echo "touch README.md"
touch README.md

echo "touch makefile"
touch makefile
