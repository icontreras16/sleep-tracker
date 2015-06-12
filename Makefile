CC=g++ -Wall

CFLAGS= -std=c++11 -c

# this target will compile all the files
all: start

start: Interval.o main.o
	$(CC) -std=c++11 main.o Interval.o -o start

Interval.o: Interval.cpp
	$(CC) $(CFLAGS) Interval.cpp

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

clean:
	rm -rf *.o start
