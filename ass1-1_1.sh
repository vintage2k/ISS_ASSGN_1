#!/bin/bash
cp quotes.txt quotes2.txt
sed -i '/^$/d' quotes2.txt
cat quotes2.txt
rm quotes2.txt
