.PHONY: clean

TARGET = tp1
OBJECTS = tp1.o
CC = gcc
CFLAGS = -Wall -pedantic -std=c99
SOURCE = https://www.github.com/guyfrancoeur/INF3135_H2019/raw/master/tp1/data.zip
$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(TARGET)
tp1.o: tp1.c
	$(CC) $(CFLAGS) -c tp1.c -o tp1.o 
clean:
	rm -rf $(OBJECTS) $(TARGET)
data:
	mkdir data
	wget $(SOURCE)
	unzip data.zip  -d ./data 
