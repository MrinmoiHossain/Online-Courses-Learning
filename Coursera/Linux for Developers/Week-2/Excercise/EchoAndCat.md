$ echo line one > myfile

$ echo line two >> myfile

$ echo line three >> myfile


$ cat  << EOF > myfile

> line one

> line two

> line three

> EOF $

line one

line two

line three