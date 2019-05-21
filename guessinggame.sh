function filecount {
	cwd=$(pwd)
	count=$(ls $cwd | wc -l)
	return $count
}
filecount

echo "Hello, "${USER}
echo "Guess how many files are in the current directory!"

while read response
do
if [[ $response =~ [a-z] ]] || [[ $response =~ [A-Z] ]]
then
	echo "You entered non-numeric characters, try again!"

elif [[ $response -eq $count ]]
then
	break

elif [[ $response -gt $count ]]
then
	echo "That's not right, it appears you guessed too high. Try again."

elif [[ $response -lt $count ]]
then
	echo "That's not right, it appears you guessed too low. Try again."
fi
done

echo "Well done! You've correctly guessed that $response files exist in this directory!"
echo "Exiting program."
