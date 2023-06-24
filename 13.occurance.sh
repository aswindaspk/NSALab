#shell script to count the occurrence of a words in a set of files

if [ $# -lt 2 ]
then
echo "Syntax Error.\nSyntax --> $0 [word] [filename] ......"
exit
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in `cat $1`
do
if [ $wd=$word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "Number of occurance of word = $count"
