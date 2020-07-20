.PHONY: all
all:
	ruby generate.rb
	mv build/web/web-book.html build/web/index.html
	cp source/gallery-exhibition.html source/apres-un-reve.html source/jonas-clade-digest.html source/assignment.html build/
	head -n 21 build/web/index.html > build/index.html
	tail -n +22 source/index.html >> build/index.html
	sed -i -e 's/css\/web-book/web\/css\/web-book/' build/index.html
