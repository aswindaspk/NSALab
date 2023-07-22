#shell script to display the content of a directory files in window style*
if [ $# -ne 0 ]
then
echo "Syntax error.\nSyntax --> <$0>"
exit 1
fi
echo "\n DIRECTORY: `pwd` \n "
for f in *
do
fdt=`date -r $f "+ %d-%m-%y  %H:%M:%S"`
if [ -d $f ]
then
echo "$fdt\t<DIR>\t$f"
else
fsize=`cat $f | wc -c`
echo "$fdt\t$fsize\t$f"
fi
done
