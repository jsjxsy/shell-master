#program function: Nginx's Log analysis
echo -e "sum num1 and num2\n"
read -p "please input num1 " num1
read -p "please input num2 " num2
read -p "please input type " type
case $type in 
	1) echo -e " add \n"
	sum=$(($num1+$num2)) 
	;;
	2) echo -e " reduce \n"
	sum=$(($num1-$num2))
	;;
	3) echo -e " che \n"
	sum=$(($num1*$num2))
	;;
	4) echo -e " dive \n"
	sum=$(($num1/$num2))
esac
#sum=$(($num1+$num2))
echo "result sum = $sum"


#read -t 30 -p "please input a dir: " dir
#if [ -d "$dir" ]
#	then
#		echo "yes"
#	else
#		echo "no"
#fi


#filesCount=0
#linesCount=0
#function funCount()
#{
#for file in ` ls $1 `
#do
#if [ -d $1"/"$file ];
#then
#funCount $1"/"$file
#else
#declare -i fileLines
#fileLines=`sed -n '$=' $1"/"$file`
#let linesCount=$linesCount+$fileLines
#let filesCount=$filesCount+1
#fi
#done
#}
#if [ $# -gt 0 ];then
#for m_dir in $@
#do
#funCount $m_dir
#echo "dir: $m_dir"
#done
#else
#funCount "."
#echo "dir: ."
#fi
#echo "filesCount = $filesCount"
#echo "linesCount = $linesCount"
