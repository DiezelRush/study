#!/bin/bash

read -p "Pervoe chislo " x
read -p "Vtoroe chislo " y
read -p "znak " operator
 
plus() {
	echo $x + $y | bc -l
}
minus(){
	echo $x - $y | bc -l 
}
umnozh() {
	echo $x \* $y | bc -l
}
del() {
if [ $y -eq 0 ]
then
	echo "not aviable"
break
else 
	echo $x / $y | bc -l
fi
}
stepen() {
	echo $x ^ $y | bc -l
}
sqrt() {
	echo sqrt "($x)" | bc -l
}




case $operator in
"+") echo " $x + $y =" $(plus);;
"-") echo " $x - $y =" $(minus);;
"*") echo " $x * $y =" $(umnozh);;
"/") echo " $x / $y =" $(del);;
"^")echo " $x ^ $y =" $(stepen);;
"sqrt") echo "sqrt($x) =" $(sqrt $x);;
esac

