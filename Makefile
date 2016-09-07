all: result

bitwise.so: bitwise.c bitwise.h
	gcc bitwise.c -shared -o bitwise.so

result: test_bitwise.py bitwise.so
	python -m unittest test_bitwise
