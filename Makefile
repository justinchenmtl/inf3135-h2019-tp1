.PHONY: clean

OBJECTS = tp1.o
CC = gcc
CFLAGS = -Wall -pedantic -std=c99
tp1: $(OBJECTS)
	$(CC) $(OBJECTS) o tp1
tp1.o: tp1.c
	$(CC) $(CFLAGS) -c tp1.c -o tp1.o 
clean:
	rm -rf $(OBJECTS) tp1
