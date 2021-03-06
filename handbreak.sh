#!/bin/bash

SRC=/home/jam/hdd/SambaShare/Render-Input      //source folder
DEST=/home/jam/hdd/SambaShare/Render-Output     //destination folder
DEST_EXT=mp4
HANDBRAKE_CLI=HandBrakeCLI

for FILE in `ls $SRC`
do
        filename=$(basename $FILE)
        extension=${filename##*.}
        filename=${filename%.*}

        $HANDBRAKE_CLI -i $SRC/$FILE -o $DEST/$filename.$DEST_EXT
echo done
done
