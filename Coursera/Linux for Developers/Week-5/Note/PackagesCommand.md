$ which gnome-software

$ yum install gnome-software

$ rpm -qa | grep bzip2

$ rpm -qil bzip2 | less

$ ls -lF $(rpm -qil bzip2) | less

$ rpm -q --whatprovides bzip2

$ rpm -q --whatrequires bzip2

$ dpkg --list

$ dpkg --listfiles bzip2


