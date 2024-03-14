NAME = a

SRC += main.c

OBJ += $(SRC:.c=.o)

CFLAGS = -Wall

all: $(OBJ)
	gcc -o  $(NAME) $(OBJ)

test_run:
	make re
	gcc -o unit_tests test.c $(SRC) -lcriterion --coverage
	./unit_tests && gcovr --exclude tests/