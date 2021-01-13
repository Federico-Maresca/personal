#!/usr/bin/env bash

VOCDIR=/content/drive/MyDrive/dataset/VOC2012/JPEGImages
SRCDIR=/content/drive/MyDrive/dataset/VOC2012/ImageSets/Main/trainval.txt

#copy VOC12 files
cnt="10"
while IFS= read -r file; do
  if [ "$cnt" == "0" ]; then
    echo "\n Printing ${VOCDIR}/${file}"
    cnt="10"
    fi
  cp -a ${VOCDIR}/${file}.jpg /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/trainA
  cp -a ${VOCDIR}/${file}.jpg /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/testA
  cnt=$[$cnt - 1]
done < "$SRCDIR"

#copy Clipart1k files
cp -a /content/drive/MyDrive/dataset/clipart/JPEGImages/. /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/trainB
cp -a /content/drive/MyDrive/dataset/clipart/JPEGImages/. /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/testB

#copy VOC07 files
cp -a /content/drive/MyDrive/dataset/VOC2007/JPEGImages/. /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/trainA
cp -a /content/drive/MyDrive/dataset/VOC2007/JPEGImages/. /content/drive/MyDrive/cyclegan_dataset/VOC2CLIPART/testA
