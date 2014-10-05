

#home directory
homedir=/var/www

#min time between treets being distributed
feedlimit=.15

if test `find "lastfeed.txt" -mmin +"$feedlimit"`
then
    echo feeding the dogs > "$homedir"/lastfeed.txt
echo Nom nom nom nom Thanks!
echo 0=55 > /dev/servoblaster
sleep 0.25
echo 0=150 > /dev/servoblaster
sleep 0.25
echo 0=55 > /dev/servoblaster
sleep 0.25
echo 0=150 > /dev/servoblaster


sleep 0.25
echo 0=150 > /dev/servoblaster
sleep 0.25
echo 0=55 > /dev/servoblaster
sleep 0.25
echo 0=150 > /dev/servoblaster
sleep 0.25
echo 0=190 > /dev/servoblaster

else
	echo Too much too soon, can only feed every "$feedlimit" minutes.

#ls -lah lastfeed.txt | awk '{print \$8}'

echo `find "lastfeed.txt"`

fi


