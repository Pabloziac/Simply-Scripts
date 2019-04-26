#!/bin/bash

echo Running $0...
echo

#Searches all words with a total char length of $1
#$1 is the value of the first argument input (Must be an Integer Value)
wordcount=$( grep -x ".\{$1\}" /usr/share/dict/words | wc -l )

#Generate a number within the wordcount bounds...
randomNum=$((1 + $RANDOM % $wordcount))

#Finally, search all words again in the list with our randomNum bounded
myrandword=$( grep -x ".\{$1\}" /usr/share/dict/words | head -$randomNum | tail -1)

echo Total words in file is $wordcount, the random word of length $1 is...
echo
echo $myrandword
