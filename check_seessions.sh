#!/bin/bash
#cron job to check the session file on each
#user directory and update the uptime


ls -d /home/* > /sysm/userlist
for i in `cat /sysm/userlist`
do
if [ -f $i/.session ]
then
 uptime | cut -d , -f 1 >> $i/.session
 fi
