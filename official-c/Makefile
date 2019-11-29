
CFLAGS=-Wall -O3 -ansi -pedantic -DECRYPT_API="ecrypt-sync.h"

CFLAGS+="-std=gnu99"

ecrypt-test: ecrypt-test.o ecrypt-sync.o trivium.o

ecrypt-test.o: ecrypt-sync.h
ecrypt-sync.o: ecrypt-sync.h
trivium.o: ecrypt-sync.h
