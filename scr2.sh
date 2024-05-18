#!/bin/bash

# bash Script ASSIGNMENT

# Create a directory called [dip] that has 5 file [f1 f2 f3 f4 f5]
# list all this files in the directory
# delete the dirctory with its content

#*****************************************************
createDir(){
	mkdir dip
	echo "------> OP1: Directory has created Successfully"
	cd dip
	echo "------> OP2: change Directory to dip"
}

createFiles(){
	counter=1
	while [ $counter -le 5 ]; do
		touch f$counter
		counter=$(($counter + 1))
	done
	ls -l

	echo "------> Files are created Successfully"
}

deleteFiles(){
	echo "are you want to delete the files and Directory? [y/n] "
	read dic
	if [[ $dic -eq "y" ]]; then
		while [ $counter -le 5 ]; do
			rm f$counter
			echo "file f$counter deleted"
			counter=$(($counter + 1))
		done

		cd ..
		rm -r dip
		echo "------> The directory dip deleted"
	else
		echo "good luck"
	fi

}

#*****************************************************
echo "This Program will Create a dip directory with 5 files, [y/n]"

wState="1"

while [ $wState -eq "1" ]; do
read answer
case $answer 
in

	y | Y)
		createDir
		createFiles
		deleteFiles
		wState="0"
	;;

	n | N)
		echo "------> Rejection Done"
		exit
	;;

	*)
		echo "------> wrong Input, Try Again"
esac
done
