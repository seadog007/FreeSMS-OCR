#/bin/bash

num=`echo -n $1 | wc -m`
left=$((160-$num))
if [ $num -ge 10 ] && [ $left -ge 0 ]
then
	echo $num
fi
