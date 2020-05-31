CC=gcc
FLAGS= -Wall -Wextra -Wpedantic -std=c99
DEBUG= -g
OBJ= hellofun.o
TARGET=hello

.PHONY= clean

$(TARGET): $(OBJ)
	$(CC) $(FLAGS) hellomain.c -o $@ $(OBJ)
	@echo "yasss queen!"

$(OBJ): %.o: %.c
	@echo "Compiling $@ from $<"
	$(CC) $(FLAGS) -c $<

clean:
	rm -f $(OBJ) hello
