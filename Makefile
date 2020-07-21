.PHONY: all
all:
	ruby generate.rb
	mv build/web/web-book.html build/web/index.html
	cp source/*.html build/

