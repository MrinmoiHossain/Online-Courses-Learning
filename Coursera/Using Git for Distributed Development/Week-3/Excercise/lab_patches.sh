#!/bin/bash
#/* **************** Coursera/lab_patches.sh **************** */
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
#!/bin/bash 

# initialize the repository and put our name and email in the .config file

echo -e "\n\n************   CREATING THE REPOSITORY AND CONFIGURING IT\n\n"

rm -rf git-test ; mkdir git-test ; cd git-test
git init
git config user.name "A Smart Guy"
git config user.email "asmartguy@linux.com"

echo -e "\n\n************   CREATING A COUPLE OF FILES AND ADDING THEM TO THE PROJECT AND COMMITTING\n\n"

echo file1 > file1
echo file2 > file2
git add file1 file2
git commit . -m "This is our first commit"

echo -e "\n\n************   MAKING A NEW CLONE\n\n"

cd .. 
git clone git-test git-newer

echo -e "\n\n************   MAKING CHANGES TO THE REPOSITORY*\n\n"

cd git-newer

echo another line >> file2
echo a third file > file3

echo -e "\n\n************   ADDING AND COMITTING THE CHANGES\n\n"

git add file2 file3
git commit -m"modifcations from the new clone"

echo -e "\n\n************   PRODUCING THE PATCH*\n\n"

git format-patch -1 -s
mv 00* ..

echo -e "\n\n************   SEEING IF THE PATCH WORKED\n\n"

cd ..
cd git-test
git apply --check ../00*

echo -e "\n\n************* NOW APPLY THE PATCH\n\n"

git am ../00*
