#!/usr/bin/env bash

ARG1=${1:-main}
ARG2=${2:-lipics}


mkdir -p "$ARG2"
touch "$ARG2"/something.txt
rm -r "$ARG2"/*
cp *.cls "$ARG2"/
cp "tmp/$ARG1.bbl" "$ARG1.bbl"

latexpand --empty-comments --output "$ARG2"/main2.tex --show-graphics "$1".tex  &> "$ARG2"/graphics.txt  
# latexpand --empty-comments --output "$ARG2"/main2.tex --show-graphics "$1".tex  &> "$ARG2"/graphics.txt  
sed '/^\s*%/d' "$ARG2"/main2.tex > "$ARG2"/$ARG1.tex
rm "$ARG2"/main2.tex
cat "$ARG2"/graphics.txt | xargs -J % cp % "$ARG2"/
rm "$ARG2"/graphics.txt


bibexport -o "$ARG2"/refs.bib "tmp/$ARG1.aux"




FILE=cc-by.pdf
if test -f "$FILE"; then
    cp "$FILE" "$ARG2"
fi

FILE=lipics-logo-bw.pdf
if test -f "$FILE"; then
    cp "$FILE" "$ARG2"
fi

FILE=orcid.pdf
if test -f "$FILE"; then
    cp "$FILE" "$ARG2"
fi