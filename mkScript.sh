#./mkScript.sh

#Set filename
touch $1.sh

#set execute perms
chmod -x $1.sh

#Set first line in new script
echo "#./$1.sh" >> $1.sh
