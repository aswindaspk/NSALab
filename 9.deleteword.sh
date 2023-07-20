#shell script to delete all lines containing word linux*

if [ $# -gt 1 ]
then
echo "Syntax error.\nSyntax is <$0> [filename]"
exit
fi
if [  $# -eq 0 ]
then
echo "Enter the file name: "
read file
else
file=$1
fi
term=`tty`
exec < $file
while read line
do
echo $line | grep -i linux > file2  #-i is for considering all cases capital and small
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
mv file1 $file
rm file2
exec < $term
echo "Lines containing 'linux' are deleted from file $file"
