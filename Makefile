NAME=expo
NAME_READ=read

all : diap

diap : $(NAME).tex
	pdflatex $(NAME).tex -halt-on-error

clean :
	rm -vf `ls --ignore=Makefile --ignore=*.tex --ignore=rc --ignore=*.sty`

view : diap
	zathura $(NAME).pdf > /dev/null 2>&1 &

view_all : all view read
