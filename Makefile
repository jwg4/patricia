all: result objects

objects: bitwise.so radix_tree.so

%.so: %.c %.h
	gcc $< -shared -o $@

result: test_bitwise.py bitwise.so
	python -m unittest test_bitwise
