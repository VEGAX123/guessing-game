
.PHONY: all FORCE

all: README.md

README.md: guessinggame.sh makefile FORCE
	@{ \
		echo "# Guessing Game"; \
		echo ""; \
		echo "## Project Information"; \
		echo ""; \
		echo "**Date and time generated:** $$(date '+%Y-%m-%d %H:%M:%S %Z')"; \
		echo ""; \
		echo "**Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh)"; \
		echo ""; \
		echo "## Description"; \
		echo ""; \
		echo "A Bash program that asks users to guess the number of files in the current directory."; \
	} > README.md

FORCE:
