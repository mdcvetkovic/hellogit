CC=gcc

CFLAGS=-c -Wall
LDFLAGS=

SRC=src/hello.c
OBJ=src/hello.o

.PHONY: hello all clean

all=hello

hello: $(OBJ)
	$(CC) $(LDFLAGS) src/hello.o -o $@

%.o: %.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f hello src/*.o

