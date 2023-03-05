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
