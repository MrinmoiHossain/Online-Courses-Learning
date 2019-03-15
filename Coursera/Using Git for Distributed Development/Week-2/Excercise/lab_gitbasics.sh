#!/bin/bash
#/* **************** Coursera/lab_gitbasics.sh **************** */
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

echo -e "\n\n*************   CREATING THE REPOSITORY AND CONFIGURING IT\n\n"

rm -rf git-test ; mkdir git-test ; cd git-test
git init
git config user.name "A Smart Guy"
git config user.email "asmartguy@linux.com"

echo -e "\n\n*************   CREATING A COUPLE OF FILES AND ADDING THEM TO THE PROJECT AND COMMITTING\n\n"

# create a couple of files and add them to the project, and then commit

echo file1 > file1
echo file2 > file2
git add file1 file2
git commit . -m "This is our first commit"

# remove one of the files and then see the difference with the repository

echo -e "\n\n*************   REMOVING ONE OF THE FILES AND THEN DIFFING\n\n"

git rm file2
git diff

echo -e "\n\n*************   RENAMING ONE OF THE FILES AND THEN DIFFING\n\n"

# now rename a file and diff again

git mv file1 file1_renamed
git diff

echo -e "\n\n*************   RECOMITTING\n\n"

# now get it all in with another commit

git commit . -m "This is the second commit"

echo -e "\n\n*************   LOOKING AT THE HISTORY OF THE PROJECT\n\n"

# look at the history

git log

echo -e "\n\n*************   DO git ls-files"

# do git ls-files

git ls-files

echo -e "\n\n*************   ADD TWO NEW FILES, MAKE ONE IGNORED, AND MODIFY A FILE\n\n"

echo extra1 >> extra1
echo extra2 >> extra2
echo anotherline >> file2
echo extra1 >> .gitignore

echo -e "\n\n*************   DO git ls-files WITH NO ARGS\n\n"

git ls-files

echo -e "\n\n*************   DO git ls-files WITH -t \n\n"

git ls-files -t

echo -e "\n\n*************   DO git ls-files WITH -t --others\n\n"

git ls-files -t -o


echo -e "\n\n*************   RECOMMIT AND CHECK AGAIN\n\n"

git add  extra2
git commit -a -m  "third commit"

git ls-files -t -c -o -s

git log
