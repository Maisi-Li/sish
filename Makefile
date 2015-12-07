OBJS = main.o util.o
CC = gcc
DEBUG = -g
COMPILE = -Wall -c $(DEBUG)
LINK = -Wall $(DEBUG)

all: $(OBJS) sish clean

sish: $(OBJS)
	$(CC) $(LINK) $(OBJS) -o sish

main.o: main.c header.h
	$(CC) $(COMPILE) main.c

util.o: util.c header.h
	$(CC) $(COMPILE) util.c

.PHONY: clean

clean: 
	rm *.o
