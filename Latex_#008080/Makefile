help:
	@echo "\nAvailable commnads:"
	@echo ">> pdf : compiles latex directory and runs" | sed 's/^/   /'
	@echo ">> clean : removes all cache files" | sed 's/^/   /'
	@echo ">> commit : commits all changes to git" | sed 's/^/   /'
	@echo ">> release : Updates version, builds and releases package to Pypy" | sed 's/^/   /'

pdf:
	@latexmk -pdf
	@zathura main.pdf
	#consider adding zathura here maybe?
clean:
	@latexmk -c
archive:
	@echo "NAU's interface"

