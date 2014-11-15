

#home directory
homedir=/var/www

#min time between treets being distributed
feedlimit=0.25


if test `find "lastfeed.txt" -mmin +"$feedlimit"`
then

#compute total feeds
currentfeedamt=$(cat lastfeed.txt)
newfeedamt=$((currentfeedamt + 1 ))

    echo "$newfeedamt" > "$homedir"/lastfeed.txt
echo Nom nom nom nom Thanks! \<BR\> Feeding \#"$newfeedamt".
echo 0=55 > /dev/servoblaster
sleep 0.05
echo 0=215 > /dev/servoblaster
sleep 0.85
echo 0=50 > /dev/servoblaster
#sleep 0.85
#echo 0=215 > /dev/servoblaster
#sleep 0.85
#echo 0=55 > /dev/servoblaster




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



fi


