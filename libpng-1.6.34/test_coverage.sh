#!/bin/bash
rm *.gcda pngout.png
for file in contrib/pngsuite/*.png; do
    ./pngtest "$file"
done
gcov *.c | grep "Lines executed"
