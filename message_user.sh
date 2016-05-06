#!/bin/bash
#Filename: message_user.sh
#Description: Script to send message to specified user logged terminals.
USERNAME=$1

devices=`ls /dev/pts/* -l | awk '{ print $3,$10 }' | grep $USERNAME | awk '{ print $2 }'`
for dev in $devices;
do
	cat /dev/stdin > $dev
done

