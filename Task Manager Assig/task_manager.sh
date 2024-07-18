#!/bin/bash
# --------------------------------------------------------------------------------------------------------------------
startMsg()
{
clear
echo "**************(Task Manager App V1.0)*************
	welcome to the task manger App V1.0
The Following are the Command can used with APP
	~ add
	~ view
	~ complete
	~ delete
	~ clear
	~ exit
***************************************************"
touch tasks.txt
}

# --------------------------------------------------------------------------------------------------------------------

add()
{
	read -p "Write The Task: " task
	linesNumber=$(wc -l < tasks.txt)
	echo "$(($linesNumber + 1)) $task ( " >> tasks.txt
}

# --------------------------------------------------------------------------------------------------------------------

completeTask()
{
	set TaskNumber = $1
	awk '$1==s{$0=$0 OFS alias}1' s=$TaskNumber alias=complete tasks.txt | tee tasks.txt

}

# --------------------------------------------------------------------------------------------------------------------
deleteTask()
{
	set TaskNumber = $1
	awk 'NR!=s{ print }' s=$TaskNumber	tasks.txt | tee tasks.txt

}

# --------------------------------------------------------------------------------------------------------------------

main()
{
	wState="1"
	while [ $wState -eq "1" ]; do
		read -p "> " answer
		case $answer in

			add)
				add
			;;
			
			view)
				echo "*************** (TASKS) ***************"
				# cat tasks.txt
				awk '{print}' tasks.txt
				echo "*************** ******* ***************"
			;;
			
			"clear")
				clear
				startMsg
			;;
			
			"complete")
				read -p "Enter The Task Number: " TaskNumber
				completeTask $TaskNumber
			;;

			"delete")
				read -p "Enter The Task Number: " TaskNumber
				deleteTask $TaskNumber
			;;

			"exit")
				exit
			;;

			*)
				echo "wrong Input, Try Again"
		esac
	done
}
# --------------------------------------------------------------------------------------------------------------------
startMsg
# --------------------------------------------------------------------------------------------------------------------
main
