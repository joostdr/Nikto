echo "starting Nikto scan.."
if  [ -s hosts.txt ]
then
	#$date="nikto_scan_"date +'%d/%m/%Y'
	$( nikto -h hosts.txt -Format html -output test.html )
else
	echo "File is empty or does not exist"
	exit 1
fi
echo "done!"

