read -p "Enter First Value : " a;
read -p "Enter Second Value :" b;
read -p "Enter Third Value : " c;

result1=$(($a+$b*$c));
result2=$(($a*$b+$c));
result3=$(($c+$a/$b));
echo $result3
