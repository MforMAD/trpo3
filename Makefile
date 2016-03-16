./bin/sort: ./obj/main.o ./obj/sort.o
	gcc -o ./bin/sort ./obj/main.o ./obj/sort.o

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o

./obj/sort.o: ./src/sort.c
	gcc -c ./src/sort.c -o ./obj/sort.o

.PHONY: clean
clean: 
	rm ./bin/sort ./obj/*.o