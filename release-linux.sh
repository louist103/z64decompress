# build decoder functions
gcc -DNDEBUG -s -Ofast -flto -lm -c -Wall -Wextra -march=native -mtune=native src/decoder/*.c
mkdir -p o
mv *.o o

# build everything else
gcc -o z64decompress -DNDEBUG src/*.c o/*.o -Wall -Wextra -s -Os -flto -march=native -mtune=native

# move to bin directory
mkdir -p bin/linux64
mv z64decompress bin/linux64



