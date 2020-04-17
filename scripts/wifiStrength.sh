#!/bin/bash
linkQuality=$(cat /proc/net/wireless |awk  'NR>2{print $3}');
linkQuality=${linkQuality::-1}
val=$(echo "($linkQuality*100)/70" |bc)
#echo   $val%
echo $val%
