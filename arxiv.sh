#!/usr/bin/env bash

ARG1=${1:-main}
ARG2=${2:-arxiv}


mkdir -p "$ARG2"
touch "$ARG2"/something.txt
rm "$ARG2"/*
cp *.cls "$ARG2"/
latexpand --empty-comments --output "$ARG2"/main2.tex --show-graphics --expand-bbl "$1".bbl "$1".tex  &> "$ARG2"/graphics.txt  
sed '/^\s*%/d' "$ARG2"/main2.tex > "$ARG2"/"$ARG1".tex
rm "$ARG2"/main2.tex
cat "$ARG2"/graphics.txt | xargs -J % cp % "$ARG2"/
rm "$ARG2"/graphics.txt
