# Makefile to generate README.md and other project information

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "This is a Bash script game where the user guesses the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "## Date and Time" >> README.md
	@echo "Generated on: $(shell date)" >> README.md
	@echo "" >> README.md
	@echo "## Number of Lines in guessinggame.sh" >> README.md
	@echo "The number of lines of code in guessinggame.sh is: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## How to Run" >> README.md
	@echo "To run the program, enter the following command in your terminal:" >> README.md
	@echo "\`\`\`bash" >> README.md
	@echo "bash guessinggame.sh" >> README.md
	@echo "\`\`\`" >> README.md
	@echo "" >> README.md
	@echo "## GitHub Pages URL" >> README.md
	@echo "This repository is available at: https://your-username.github.io/your-repository-name" >> README.md

# Clean up the generated README file
clean:
	rm -f README.md

