#!/usr/bin/env bash

VOCDIR=./VOC2012/JPEGImages
VOCTXT=./VOC2012/ImageSets/Main/trainval.txt

#copy VOC12 files
while IFS= read -r file; do
  cp -a ${VOCDIR}/${file}.jpg ./VOC2CLIPART/trainA
  cp -a ${VOCDIR}/${file}.jpg ./VOC2CLIPART/testA
done < "$VOCTXT"

CLIPDIR=./clipart/JPEGImages
TRAINCLIP=./clipart/ImageSets/Main/train.txt

while IFS= read -r file1; do
  cp -a ${CLIPDIR}/${file1}.jpg ./VOC2CLIPART/trainB
done < "$TRAINCLIP"
