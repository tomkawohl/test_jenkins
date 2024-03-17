NAME = unit_tests
SRC += main.c
SRC += test.c
OBJ = $(SRC:.c=.o)
CFLAGS = -Wall -Wextra -g -I.

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ) -lcriterion --coverage

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(NAME) *.gcno *.gcda

fclean: clean

re: fclean all

test_run: re
	./$(NAME)
