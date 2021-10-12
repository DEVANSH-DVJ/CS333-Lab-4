echo "Running test-zem.c"
g++ test-zem.c zemaphore.c -o test-zem.o -lpthread
./test-zem.o
echo
echo "Running test-toggle.c"
g++ test-toggle.c zemaphore.c -o test-toggle.o -lpthread
./test-toggle.o
