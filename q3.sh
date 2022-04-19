#!/bin/bash
read
wc -c < "$PWD/$REPLY"
wc -l < "$PWD/$REPLY"
wc -w < "$PWD/$REPLY"
awk '{printf"line number:";print NR;printf" - Count of words:" ;print NF}' $REPLY
for w in `cat $REPLY`
do
	echo $w
done|sort|uniq -cd|sort -bnr
