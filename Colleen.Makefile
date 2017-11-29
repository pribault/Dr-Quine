NAME = Colleen
CC = gcc
FLAGS = -Wall -Wextra -Werror
SRC =	src/colleen.c
OBJ = $(SRC:%.c=%.o)

.PHONY: all clean fclean re export

all: $(NAME)

%.o: %.c
	@echo "\033[38;5;125mcompiling $@\033[0m"
	@$(CC) $(FLAGS) -o $@ -c $<

$(NAME): $(OBJ)
	@echo "\033[38;5;207mcompiling $(NAME)\033[0m"
	@$(CC) $(FLAGS) -o $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

norme:
	@norminette $(SRC:%.o=%.c)

re: fclean all
