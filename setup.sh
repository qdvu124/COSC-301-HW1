#!/bin/bash

echo "Creating test files for hw1"
rm -rf foo
mkdir -p foo/b/c
mkdir -p foo/b/d

for (( i=1 ; i<=10 ; i++ )); do
    head -$(( i*10 )) /usr/share/dict/words > foo/file${i}.stuff
done

for (( i=0 ; i<3 ; i++ )); do
cat > foo/file${i}.c <<ENDCODE
#include <stdio.h>
int main() {
   printf("Hello, world${i}\n");
   return 0;
}
ENDCODE

done

dd if=/dev/zero of=./foo/b/x bs=1024 count=20 > /dev/null 2>&1
dd if=/dev/zero of=./foo/b/y bs=1024 count=30 > /dev/null 2>&1
dd if=/dev/zero of=./foo/b/d/z bs=1024 count=50 > /dev/null 2>&1
dd if=/dev/zero of=./foo/.w bs=1024 count=10 > /dev/null 2>&1

