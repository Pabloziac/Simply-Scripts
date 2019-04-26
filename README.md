# Simply-Scripts
Learning and applying bash scripting to make every day terminal tasks easier
## Copier.sh
This is a simple shell script that will take any given length of a filename and create a copy of it with the date appened to the end of the filename.

`./Copier.sh *.extensionType`

Output: `*[date].extensionType`
## RandomWordSelector.sh
This small script will just randomly select a word in `/usr/share/dict/words`,or any specified text file. Futhermore it can specify how long you want your random word to be by inputting the length of the word in the first argument.

`./RandomWordSelector.sh 4`

Output: 
```
Running ./RandomWordSelector.sh...

Total words in file is 6793, the random word of length 5 is...

major
```



