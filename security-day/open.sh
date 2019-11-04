#!/bin/bash

if ! [ -z "$1" ]
  then
    PREFIX="src/md/$1/"
fi

node node_modules/reveal-md/bin/cli.js $PREFIX*.md -w