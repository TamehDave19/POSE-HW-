#!/bin/bash
for png in contrib/pngsuite/*.png contrib/gregbook/*.png; do
    if [ -f "$png" ]; then
        echo "Testing $png"
        ./pngtest "$png"
    fi
done
gcov *.c

