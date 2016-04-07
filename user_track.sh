### Script to track the usage of user 

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
date >> $HOME/.session
cat $HOME/.name >> $HOME/.session
cat $HOME/.adid >> $HOME/.session
fi
echo "Session started at `date`" >> $HOME/.session
fi
trap 2
