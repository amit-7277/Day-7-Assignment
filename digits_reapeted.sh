

j=0
for((i=1;i<=100;i++))
do
a=$((i%10))
b=$((i/10))

while((a==b))
do
((a++))
numbers[j]=$i
((j++))
done
done
echo "Digits that are repeated twice are:" ${numbers[@]}


