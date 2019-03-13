#!/bin/sh
echo "Do you want to destroy your entire file system?"
read response

case "$response" in
   "yes")              echo "I hope you know what you are doing!" ;;
   "no" )              echo "You have some comon sense!" ;;
   "y" | "Y" | "YES" ) echo "I hope you know what you are doing!" ;
                       echo ’I am going to type: " rm -rf /"’;;
   "n" | "N" | "NO" )  echo "You have some comon sense!" ;;
   *   )               echo "You have to give an answer!" ;;
esac
exit 0
