#!/bin/bash

if [[ -z $1 ]]
then
	echo "You need to provide a commit message"
	exit 1
fi

dart format lib/src/*
git commit -a -m "$1"
git push
dart pub publish
