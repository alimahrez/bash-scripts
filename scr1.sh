#!/bin/bash

# Task 1 : Implement a function that takes 2 inputs and proforms
	# addition of  the 2 numbers
	# print the result
	# loops over the resulting addition and decrementing with value print

# taking the value from User

echo "This Program for adding Two numbers"
echo " **************************************** "
echo "Please Enter Number1: "
read number1
echo "Please Enter Number2: "
read number2
echo " **************************************** "
# addition Function

sum(){
	echo "The result of :  $number1 + $number2 = $(($number1 + $number2))"
	counter=$(($number1 + $number2))
	while [ $counter -gt 0  ]; do
		counter=$(($counter - 1))
		echo "loop No: $counter"
	done
}


# Run the Function

sum
