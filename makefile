create_readme: guessinggame.sh
	echo "# Bash Guessing Game" > README.md;
	currentdate=$$(date +"%Y-%m-%d %T"); \
	echo "The make command was run at $$currentdate." >> README.md;
	lines=$$(wc -l guessinggame.sh | egrep -o "[0-9]+"); \
	echo "The guessinggame.sh script contains $$lines lines of code." >> README.md

