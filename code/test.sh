#!/usr/bin/env bash

# Compile source to object files
gcc -Wall -std=gnu99 -O3 -pedantic trivium.c -o trivium.o -c
gcc -Wall -std=gnu99 -O3 -pedantic ecrypt-sync.c -o ecrypt-sync.o -c
gcc -Wall -std=gnu99 -O3 -pedantic main.c -o main.o -c -DECRYPT_API="ecrypt-sync.h"

# Link object files
gcc -o main main.o ecrypt-sync.o trivium.o
