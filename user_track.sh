#!/bin/bash
# Ask the user details and log  it

if [ !  -f $HOME/.session ]
then
echo "Hello ,Please type your name to continue"
trap '' 2
read name
echo $name > $HOME/.name
echo "Please type your ADID and EMail id"
read name
echo $name >  $HOME/.adid
if [ -z $name ]
then
exit
else
echo "The first login" `date` >> $HOME/.session
echo "User Full name" `cat $HOME/.name` >> $HOME/.session
echo "AD ID of the user" `cat $HOME/.adid` >> $HOME/.session
fi
echo "Session started at `date`" >> $HOME/.session
fi
trap 2
