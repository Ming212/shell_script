files=$(find ./ -name "*.h" -o -name "*.cpp")
keyword=$1

if [ -z "$keyword" ]
then
   keyword="UTF-8"
fi

count=0
for filename in $files
do
 info=$(file -b ${filename:2})

 if [[ $info != *$keyword* ]];
 then
    count=$(($count+1))
    echo "[NOT $keyword] $filename : $info"
 fi
done

echo ""
echo "[NOT $keyword] total count: $count"
read -n1 -rp "Press any key to quit: " key



