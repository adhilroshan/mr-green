git init

touch mr-green

declare -i x
echo "Enter Beginning date [yyyymmdd]"
read x

declare -i y
echo "Enter End date [yyyymmdd]"
read y

declare -i z
declare -i y
echo "How many commits"
read z

DATE=$x

i=0

while [ $i -le $z ]

do
	while [ $DATE -le $y ]

	do
		echo 'a' >> mr-green

		git add .

		msg='commit'${DATE}

		git commit -m $msg --date="$(date -R -d ${DATE})"
		
		DATE=$(date +%Y%m%d -d "$DATE + 1 day")

	done
	
	i=`expr $i + 1`
done
