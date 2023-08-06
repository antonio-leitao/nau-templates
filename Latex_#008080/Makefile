help:
	@echo "\nAvailable commnads:"
	@echo ">> compile : compiles wiki files into tex" | sed 's/^/   /'
	@echo ">> pdf : compiles latex directory and runs" | sed 's/^/   /'
	@echo ">> clean : removes all cache files" | sed 's/^/   /'
	@echo ">> commit : commits all changes to git" | sed 's/^/   /'

compile:
	@bash compile.sh
pdf:
	@latexmk -pdf
	@zathura main.pdf
clean:
	@latexmk -c
archive:
	@echo "NAU's interface"

