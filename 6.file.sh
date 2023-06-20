#shell script to find no of line & words in a file

if [ $# -gt 1 ]
then
echo "Syntax Error \nSyntax --> $0 [filename.extension]"
exit 1
fi
if [ $# -eq 0 ]
then
echo "\nEnter a File Name with extension :: "
read filename
else
filename=$1
fi
flag=0
if [ $# -eq 1 ]
then
ter=`tty`
exec < $filename
i=0
j=0
while read line
do 
i=`expr $i + 1`
set $line > /dev/null
j=`expr $j + $#`
done
echo "No. of lines in $filename : $i"
echo "No. of words in $filename : $j"
exec < $ter
fi
