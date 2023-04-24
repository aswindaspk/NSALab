if  [ $# -gt 3 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter first side:"
read a
echo "Enter second side:"
read b
echo "Enter third side:"
read c
else
a=$1
b=$2
c=$3
fi
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
echo "$a, $b, $c cannot be the sides of triangle"
exit
else
echo "$a, $b, $c can be the sides of triangle"
fi
