all: result

bitwise.o: bitwise.c bitwise.h
	gcc bitwise.c -c

result: test_bitwise.py bitwise.o
	python -m unittest test_bitwise
