#!/bin/sh


if [ $# -ne 1 ]
then
exit
fi

# Saving source filename
filename=$1

# Removoing the extension . Assumes it is .c
file=`basename $filename .c`

# Adding #include "define.h"
# It has all the #define that a administrator would like to add
sed '1i\
#include "define.h"
' $filename >tempsource.c

# Compiling the file
gcc -o temp.out tempsource.c 

# Checks if the compilation is successfull
if [ $? -ne 0 ]
then
echo "Compilation Error"
exit
fi

# using LD_PRELOAD to add these libraries and saving in a temp file
LD_PRELOAD=`pwd`/defender.so ./temp.out>OUTPUT

#Saving it in a .out file
tail -n +2 OUTPUT>${file}.out
# Removes temp files
rm tempsource.c OUTPUT temp.out 
echo "Finished everything successfully"
