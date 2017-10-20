all: README.md

README.md:

	echo "## guessinggame.sh made for coursera Unix course\n" > README.md
	echo -n "The file is created: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
