#reverse lines of file

if [ $# -gt 1 ]
then
echo "Syntax Error \nSyntax --> $0 [filename.extension]"
exit 1
fi
cp $1 file
l=`cat file | wc -l`
rm reverse
while [ $l -gt 1 ]
do
tail -n 1 file >> reverse
l=`expr $l - 1`
head -n $l file > temp
mv temp file
done
cat reverse
