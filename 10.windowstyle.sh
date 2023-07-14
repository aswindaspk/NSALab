#shell script to display the content of a directory files in window style*
if [ $# -ne 0 ]
then
echo "Syntax error"
exit 1
fi
echo "Directory of `pwd` \n "
for f in *
do
fdt=`date -r $f "+ %d-%m-%y %H:%M:%S"`
if [ -d $f ]
then
echo "$f\t\t\t\t<DIR>\t\t\t\t$fdt"
else
fsize=`cat $f | wc -c`
echo "$f\t\t\t\t$fsize\t\t\t\t$fdt"
fi
done
