# build decoder functions
gcc -m32 -DNDEBUG -s -Ofast -flto -lm -c -Wall -march=native -mtune=native src/decoder/*.c
mkdir -p o
mv *.o o

# build everything else
gcc -m32 -o z64decompress -DNDEBUG src/*.c o/*.o -Wall -Wextra -s -Os -flto -march=native -mtune=native

# move to bin directory
mkdir -p bin/linux32
mv z64decompress bin/linux32



