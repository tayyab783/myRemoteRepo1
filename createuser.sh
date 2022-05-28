#!/bin/bash

#Create User by passing argument

MYUSER=$1

if [ ! $MYUSER ]; then
  echo "Enter User Name"
  exit
fi

#RUNSUER=`/usr/bin/whoami`

#echo "User: $RUNUSER"

#if [ "$RUNUSER" != 'root' ]; then

#  echo "You must be a ROOT user"
#  exit
 
#fi

/usr/bin/id $MYUSER

if [ $? -eq 0 ]; then

  echo "The User $MYUSER already exist!!!"
  exit

fi

/usr/sbin/useradd $MYUSER

echo "The user $MYUSER is created!!!"
