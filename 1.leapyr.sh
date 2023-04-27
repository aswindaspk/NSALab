if [ $# -gt 1 ]
then
echo "Syntax Error \nSyntax --> $0 [year]"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter a Year: "
read year
else
year=$1
fi
a=`expr $year % 4`
b=`expr $year % 100`
c=`expr $year % 400`
if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then
echo "$year is a Leap Year"
else
echo "$year is Not a leap year"
fi
