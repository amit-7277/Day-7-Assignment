n1=$((100+RANDOM%201))
n2=$((100+RANDOM%201))
n3=$((100+RANDOM%201))
n4=$((100+RANDOM%201))
n5=$((100+RANDOM%201))
n6=$((100+RANDOM%201))
n7=$((100+RANDOM%201))
n8=$((100+RANDOM%201))
n9=$((100+RANDOM%201))
n10=$((100+RANDOM%201))
arr=($n1 $n2 $n3 $n4 $n5 $n6 $n7 $n8 $n9 $n10)
echo "All ten random number are:" 
echo ${arr[@]}
for ((i = 0; i<10; i++))
do
    
    for((j = 0; j<10-i-1; j++))
    do
    
        if((${arr[j]}>${arr[$((j+1))]}))
        then

            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[@]}
echo "Second Highest number is:" 
echo ${arr[8]}
echo "Second Lowest number is:"
echo ${arr[1]}



