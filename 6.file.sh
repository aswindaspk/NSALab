if [ $# -gt 1 ]
then
echo "Syntax Error \nSyntax --> $0 [filename.extension]"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter a File Name with extension :: "
read filename
else
filename=$1
fi
a=$(wc -w $filename | cut -d ' ' -f1)
b=$(wc -l $filename | cut -d ' ' -f1)
echo "Number of words in $filename :: $a"
echo "Number of lines in $filename :: $b"
