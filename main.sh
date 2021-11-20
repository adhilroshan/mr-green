git init

touch mr-green

declare -i x
echo "Enter Beginning date [yyyymmdd]"
read x

declare -i y
echo "Enter End date [yyyymmdd]"
read y

declare -i z
echo "How many commits"
read z


for (( i=0; i<$z; i++ ))

do
	DATE=$x
	while [ $DATE -le $y ]

	do
		echo 'SMAASHHH!!' >> mr-green

		git add .

		msg='commit '${DATE}

		git commit -m $msg --date="$(date -R -d ${DATE})"
		
		DATE=$(date +%Y%m%d -d "$DATE + 1 day")

	done
	# echo "$i"

done
echo "$z commits are placed between $x and $y"