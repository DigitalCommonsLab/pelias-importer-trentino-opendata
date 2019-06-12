#!/bin/bash

TMP="./tmp/"
DATA="./data/"

echo "Download files..."
rm -fr $TMP/*

> download.log
aria2c -i download.conf -d $TMP -l download.log -x 8 --auto-file-renaming=false -c

#ls -1 $TMP

#extract compressed
unzip -d "${TMP}TRENTO_CIVICI_SHP" "${TMP}TRENTO_CIVICI_SHP.zip"
unzip -d "${TMP}TRENTO_STRADE_SHP" "${TMP}TRENTO_STRADE_SHP.zip"