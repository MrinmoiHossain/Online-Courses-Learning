#!/bin/bash
#/* **************** Coursera **************** */
#/*
# * The code herein is: Copyright the Linux Foundation, 2018
# *
# * This Copyright is retained for the purpose of protecting free
# * redistribution of source.
# *
# *     URL:    http://training.linuxfoundation.org
# *     email:  trainingquestions@linuxfoundation.org
# *
# * This code is distributed under Version 2 of the GNU General Public
# * License, which you should have received with the source.
# *
# */
#!/bin/sh

usage="Usage: Backup Source Target"

if [[ $# -lt 2 ]] ; then
    echo -e '\n'    $usage '\n'
    exit 1 
fi

if ! [[ -d $1 ]] ; then
    echo -e '\n' ERROR: First argument must be a Directory that exists: quitting'\n'
    exit 1 
fi

SOURCE=$1
TARGET=$2

DIRLIST=$(cd $SOURCE ; find . -type d )
# echo DIRLIST= $DIRLIST

for NAMES in $DIRLIST 
do
	SOURCE_DIR=$SOURCE/$NAMES
	TARGET_DIR=$TARGET/$NAMES
	echo "SOURCE= $SOURCE_DIR      TARGET=$TARGET_DIR"
	FILELIST=$( (cd $SOURCE_DIR ; find . -maxdepth 1 ! -type d ) )
	mkdir -p $TARGET_DIR
	OLDIFS=$IFS
IFS='
'
	tar -zcvf $TARGET_DIR/Backup.tar.gz  -C $SOURCE_DIR $FILELIST
	IFS=$OLDIFS
done
	
