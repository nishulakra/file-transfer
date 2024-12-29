#!/bin/bash

echo ""S" for send "R" for recieve "
read -p ">>>>> " i

if [ $i == "R" ];then
  echo "your machine  is server (S) or client (C) "
  read -p ">>>> " sc
  echo "enter your file name "
  read -p ">>>> " fn
  if [ $sc == "S" ];then
      echo "enter your port "
      read -p ">>>> " p
      nc -p $p -l >$fn
  else
    echo "Enter your ip address "
    read -p ">>>>> " ip
    echo "enter your port "
    read -p ">>>>> " p
    nc $ip $p >$fn
  fi
else
   echo "Your machine is server (S) or client (C) "
   read -p ">>>> " sc
   echo "Enter your file name "
   read -p ">>>> " fn
   if [ $sc == "S" ];then
       echo "enter your port "
       read -p ">>>> " p
       nc -p $p -l <$fn
   else
    echo "Enter your server ip address "
    read -p ">>>> " ip
    echo "enter your port "
    read -p ">>>> " p
    nc $ip $p <$fn
   fi
fi
 
