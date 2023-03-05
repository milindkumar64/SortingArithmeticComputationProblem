read -p "Enter First Value : " a;
read -p "Enter Second Value :" b;
read -p "Enter Third Value : " c;

result1=$(($a+$b*$c));
result2=$(($a*$b+$c));
result3=$(($c+$a/$b));
result4=$(($a%$b+$c));

declare -A Compute

Compute[first]=$result1
Compute[second]=$result2
Compute[third]=$result3
Compute[fourth]=$result4

echo "All compute values stored inside Dictionary"

Array[0]=${Compute[first]}
Array[1]=${Compute[second]}
Array[2]=${Compute[third]}
Array[3]=${Compute[fourth]}

echo "All the stored values in array that is fetched from dictionary are :" ${Array[*]}

for ((i = 0; i<4; i++))
do
   for ((j = 0; j<4-i-1; j++))
   do

      if [ ${Array[j]} -gt ${Array[$((j+1))]} ]
      then

       temp=${Array[j]}
       Array[$j]=${Array[$((j+1))]}
       Array[$((j+1))]=$temp

      fi

   done

done

echo "Sorted Array is :" ${Array[*]}
