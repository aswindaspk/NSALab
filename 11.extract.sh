#extracting a set of lines from files

if [ $# -le 2 ]
then
echo "Syntax Error.\nSyntax -->  $0 [range] [range] [files...]"
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
echo "\n\nContents of $1 between lines $n1-$n2 :\n"
head -$n2 $1 | tail -$n3
shift
done
exit 0
