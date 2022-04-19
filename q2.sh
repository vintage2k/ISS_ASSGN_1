#!/bin/bash
touch speech.txt
while IFS= read -r line; do
	IFS='~'
	read -r var1 var2 <<< $line
	echo $var2 "once said" '"'$var1'"' >> speech.txt
	IFS=
done < quotes.txt



