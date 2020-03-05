all: build run

build:
	latexmk -xelatex \
	-synctex=1 main.tex
	
run:
	# Здесь использовать свой просмотрщик для просмотра PDF
	open -a Preview main.pdf &
	
clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.log \
	*.out \
	*.synctex.gz \
	*.toc \
	*.xdv