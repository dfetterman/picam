

#home directory
homedir=/var/www

#min time between treets being distributed
feedlimit=5

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
	echo Too much too soon \<BR\>can only feed every "$feedlimit" minutes.

now=$(date +%s)                          
was=$(stat -c%Y lastfeed.txt)      
elapsed=$((now - was))
days=$((elapsed/86400))
hours=$(( (elapsed-days*86400)/3600 ))   
mins=$(( (elapsed-days*86400 - hours*3600)/60 ))
secs=$(( elapsed - days*86400 - hours*3600 - mins*60 )) 

#printf '%02dd:%02dh:%02dm:%02ds\n' $days $hours $mins $secs
#printf '%02d\n' $mins
timetonextfeed=$(($feedlimit - $mins))

echo Try again in "$timetonextfeed" min.



#echo `find "lastfeed.txt"`

fi


