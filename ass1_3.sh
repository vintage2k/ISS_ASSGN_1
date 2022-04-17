#!/bin/bash
read
declare -a ARRAYNAME
wc -c < "$PWD/$REPLY"
wc -l < "$PWD/$REPLY"
wc -w< "$PWD/$REPLY"
read lines <<< $(wc -l)
for i in lines
do
	awk '{printf"line number:";print NR;printf" - Count of words:" ;print NF}' $REPLY
done
for w in `cat $REPLY`
do
	echo $w
done|sort|uniq -cd|sort -bnr
