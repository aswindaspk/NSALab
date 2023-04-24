if [ $# -gt 2 -o $# -lt 2 ]
then
echo "--Syntax Error--"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter starting limit:"
read a
echo "Enter ending limit:"
read b
else
a=$1
b=$2
fi
if [ $a -gt $b ]
then
c=$b
b=$a
a=$c
fi
echo "Prime numbers between $a-$b are:"
for x in $(seq $a $b)
do
k=0
for i in $(seq 2 $(expr $x - 1))
do
if [ $(expr $x % $i) -eq 0 ]
then
k=1
break
fi
done
if [ $k -eq 0 ]
then
echo $x
fi
done
