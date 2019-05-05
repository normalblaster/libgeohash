# Simple Makefile for static library construction and testing

all: library test

library:
	gcc -fPIC -c geohash.c -o geohash.o
	gcc -shared -o libgeohash.so geohash.o
	rm geohash.o
	
test:
	gcc geohash_test.c geohash.c 	
	./a.out
	rm a.out
	
clean: 
	rm -rf *.a *.o *.so
