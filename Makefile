all: 
	gcc -c -Wall -Werror -fpic ulid.c -std=c99
	gcc -shared -o libulidc.so ulid.o

test: test.o ulid.o

clean:
	$(RM) test.o ulid.o test
