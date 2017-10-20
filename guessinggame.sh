num=$(ls -1 | wc -l)
function judge {        # This function is used to judge whether our input is higher or lower than the number of files 
    if [[ $1 -lt $2 ]]          # Using if to filt data
    then
	echo "Sorry, your answer is too low!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Sorry, your answer is so big!"
    else
	echo ""
	echo "Congratualations!"
    fi
}

while [[ $num  -ne $guess ]]    # LOOP for try to guess several times
do
    read -p "Guess how many files are in the current directory? " guess
    echo "You entered: $guess"
    echo $(judge $guess $count)
    echo ""
done
