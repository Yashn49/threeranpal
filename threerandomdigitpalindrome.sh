#!/bin/bash

RDP1=$(((RANDOM%899)+100))
echo $RDP1
RDP2=$(((RANDOM%899)+100))
echo $RDP2
RDP3=$(((RANDOM%899)+100))
echo $RDP3
s=0
rev=" "
arr=($RDP1 $RDP2 $RDP3)
for (( i=0; i<${#arr[@]}; i++ ))
do
 temp=${arr[$i]}
 while [ ${arr[$i]} -gt 0 ]
 do
  s=$(( ${arr[$i]} % 10 ))
  arr[$i]=$(( ${arr[$i]} / 10 ))
  rev=$( echo ${rev}${s} )
 done
 if [ $temp -eq $rev ]
 then
  echo "$temp is pal"
 else
  echo "$temp is not pal"
 fi
done
