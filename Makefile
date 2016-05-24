./bin/test:	./obj ./bin ./obj/main.o ./obj/test.o
	gcc -o ./bin/test ./obj/main.o ./obj/test.o

./obj:
	mkdir obj

./bin:
	mkdir bin

./obj/main.o: ./src/main.c
	gcc -c ./src/main.c -o ./obj/main.o

./obj/test.o: ./src/test.c
	gcc -c ./src/test.c -o ./obj/test.o

.PHONY: clean
clean: 
	rm -r ./bin ./obj