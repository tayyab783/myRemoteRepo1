#!/bin/bash
######################################
#Create user using while loop        #
######################################

ANSW='Y'

while [ "$ANSW" == 'Y' ]

do
  
  echo
  echo "Please enter username to add"
  read MYUSER

  ./createuser.sh $MYUSER

  echo
  echo "Do you want to add more users? Y/N"
  read ANSW
 
done

