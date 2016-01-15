
::mingw32-make
gcc -o symmetry -O3 -ansi -Wall symmetry.c -lm

mkdir %PREFIX%\bin

cp %SRC_DIR%\symmetry.exe %PREFIX%\bin\symmetry.exe
