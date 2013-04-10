#!/bin/sh

# Names
awk -F\;  '{print $2}' onomata_epitheta.csv |
sed '1d;s/"//g;s/ .*//' |
# Sed complains about /d of the following RE
grep -v '[^�-�]/' |
sort |
uniq -d >names.txt

exit

# Surnames
awk -F\;  '{print $1}' onomata_epitheta.csv |
sed '1d;s/"//g;s/  *$//' |
# Sed complains about /d of the following RE
grep -v '[^�-� ]/' |
sort |
uniq -d >surnames.txt


