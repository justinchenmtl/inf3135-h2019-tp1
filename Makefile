.PHONY: clean

TARGET = tp1
OBJECTS = tp1.o
CC = gcc
CFLAGS = -Wall -pedantic -std=c99
SOURCE = https://www.github.com/guyfrancoeur/INF3135_H2019/raw/master/tp1/data.zip
FILE := cp.txt
CODE := $(shell cat ${FILE})
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
test:
	./tp1 -c $(CODE) -i ./data/data.txt -o resultat.txt
resultat: 
	git add resultat.txt
	git commit -m "Poussez le resultat dans le projet"
	git push origin master 
