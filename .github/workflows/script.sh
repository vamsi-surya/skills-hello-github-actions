#!/bin/bash

addition() {
    local num=$1
    local num2=$2
    let sum=$num+$num2 
    echo "sum of two $sum "
}

addition 20 40

====================================
#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10
do
     if [[ $i -ne 0 ]]
     then
     continue
     fi
     echo "odd number is:" $i
done


========================================

$@ - all arguments
$# - count of arguments
$? - suucessful
$1 - first arguments to pass


=================================================

#!/bin/bash

if [[ $# -eq 0 ]]
then
  echo "please provide an arguments"
  exit 1
fi

echo "first argument:" $1
echo "second argement:" $2
echo "all arguments:" $@
echo "count of arguments:" $#

===================================================
#!/bib/bash

read -p "whih site need to check" site
ping -c 1 $site

if [[ $? -eq 0 ]]
then 
   echo "site is working and reachable"
else 
  echo "site is not reachable"
fi

=========================================================

#!/bin/bash

FILEPATH="/home/vamsi/myscripts/build.yml"
if [[ -f $FILEPATH ]]
then 
   echo "files exist"
else
   echo "file not exists"
   exit 1
fi

===========================================================
#!/bin/bash

FILEPATH="/home/vamsi/myscripts/build.yml"

if [[ -f $FILEPATH ]]
then 
   echo "file exists"
else 
   echo "creating a file"
   touch $FILEPATH
fi

====================================================================

root user of UID is $UID is 0:

=============================================================
#!/bin/bash
#generating randoms numbers from 1 to 6

NO=$(( $RANDOM%6 + 1 ))

echo "number is:" $NO
=========================================================

#!/bin/bash

# to check the user is root or not

if [[ $UID -eq 0 ]]
then 
  echo "user is root"
else
   echo "user is not a root user"

fi

===================================

cd vamsi &> /dev/null
#in order not to print output in terminal

==========================================
# to print name of the script
echo "print the name of the script ${0}"
logger "print the name of the script ${0}"
it show log file /var/log/messages

========================================
set -x
#to unable the debugging of the script
set -e
# want to exit our script when its fails
pwd
ls
cd vamsi  # fail 
hostname

===========================
#running script in background
nohup date
#it will store in nohup.out
at command is used for to schedule at specfic time
atq to check the que jobs
at time ./script.sh
and control d
to remove scheule 
atrm id


