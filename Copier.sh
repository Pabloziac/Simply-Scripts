#!/bin/bash

#This copies a given file with a dated copy
#Enter the file in the first argument input

#Get length of whole input
argumentLength=$1
size=${#argumentLength} 

#count how mant chars until you reach the '.'
str=$1
tmp="${str%%.*}"
if [ "$tmp" != "$str" ]; then

#Calculates the offset and determines the suffix at the end of the file
num=$((${#tmp} + 1))
offset=$((${#size} - $num))
suffix=${argumentLength: -$offset}

#Get curr date
date=$(date -I)

#Create a copy at the time it was copied at the FRONT of the filename
#copy=$(cp $1 "$date"_"$1")

#Removes suffix and appends the date it was copied at the END of the filename
name=$(basename -s $suffix $1)
modifiedName="$name"_"$date""$suffix"
copy=$(cp $1 $modifiedName) 

fi