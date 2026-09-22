

USAGE=$(df $1 -h | awk 'NR==2 {print $5}' | sed 's/%//')
THRESHOLD=80

if [ $USAGE -gt $THRESHOLD ];then
	echo "Warning: Disk usage is hight - ${USAGE}"
else
	echo "Disk usage is normal - ${USAGE}"
fi
