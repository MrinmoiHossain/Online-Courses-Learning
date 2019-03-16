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

StripDotSlash(){
result=""
for names in $1 ; do 
       result="$result $(basename $names)"
       done
    echo "$result"
}
    
GetFileNames(){
    StripDotSlash "$(find . -maxdepth 1 -not -type d )"
}

GetDirNames(){
     StripDotSlash "$(find . -maxdepth 1 -mindepth 1 -type d)"
}

DoDir(){
    local dirnames filenames R_SOURCE R_TARGET
    DIRNO=$(( $DIRNO + 1))
    cd $1
    echo  "DIRNO=$DIRNO    SOURCEDIR= $1    TARGETDIR = $2"
    dirnames=$(GetDirNames)
    filenames=$(GetFileNames) ;
    if [[ -n $filenames ]] ; then
	tar -zcf $2/Backup.tar.gz $filenames
    fi

    for R_SOURCE in $dirnames ; do
        R_TARGET=$2/$R_SOURCE
        mkdir -p $R_TARGET
        DoDir $1/$R_SOURCE $R_TARGET
    done
}

###########################################################################

SOURCE=$1
TARGET=$2

# Make sure the target directory is a full path name

#if ! [[ $(echo "$TARGET" | grep -q ^\/) ]] ; then 
if ! [[ $(echo "$TARGET" | grep ^\/) ]] ; then 
    echo -n TARGET was $TARGET: AFTER ADDING FULL PATH: 
    TARGET=$(pwd)\/$TARGET
    echo TARGET now is $TARGET
fi


DIRNO=0
usage="Usage: Backup Source Target"

if [[ $# -lt 2 ]] ; then
    echo -e '\n'    $usage '\n'
    exit 1 
fi

if ! [[ -d $1 ]] ; then
    echo -e '\n' ERROR: First argument must be a Directory that exists: quitting'\n'
    exit 1 
fi

# Make sure the target directory exists
mkdir -p $TARGET

DoDir $SOURCE $TARGET

echo "Backup Successfully Done"
exit 0
###########################################################################
