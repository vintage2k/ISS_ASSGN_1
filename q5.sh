#!/bin/bash
read x
test=$(echo $x | rev)
echo $test
len=${#x}
for ((i=0; i<$len; i++))
do 
	echo -n ${test:$i:1} | tr '[a-y]z' '[b-z]a'
done
echo
len2=$(($len/2))
len3=$(($len-$len2))
test2=$(echo $x | rev)
echo "${test2:$len3:$len2}${x:$len2:$len3}"
