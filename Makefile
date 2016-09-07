all: bitwise.o

bitwise.o: bitwise.c bitwise.h
	gcc bitwise.c -o bitwise.o
