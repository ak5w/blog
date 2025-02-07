#!/bin/bash
 
git add .
 
git remote rm origin
#replace your git location
git remote add origin git@gitee.com:ak5w/blog.git
git pull remote master
git add .
git commit -m $1
git push origin master --force
 
if [ "$?" = "0" ]
then
   echo -e "\033[42;34m push to gitee success! \033[0m"
else
   ech -e  "\033[41;30m push to gitee fail! \033[0m"
   exit 1
fi

git remote rm origin
#replace your git location

git remote add origin git@github.com:ak5w/blog.git
git pull remote master
git add .
git commit -m $1
git push origin master --force
if [ "$?" = "0" ]
then
  echo -e "\033[42;34m push to github success! \033[0m"
else
   echo -e "\033[41;30m push to github fail! \033[0m"
   exit 1
fi
