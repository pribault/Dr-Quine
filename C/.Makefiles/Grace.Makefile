NAME = Grace
CC = gcc
FLAGS = -Wall -Wextra -Werror
SRC =	src/grace.c
OBJ = $(SRC:%.c=%.o)
COMPILED = false

.PHONY: all clean fclean re export

all: $(NAME)
	@if [ $(COMPILED) = true ]; then echo "\033[38;5;125m$(NAME) done\033[0m"; else echo "\033[38;5;125mnothing to be done for $(NAME)\033[0m";fi

%.o: %.c
	@echo "\033[38;5;207mcompiling $@\033[0m"
	@$(CC) $(FLAGS) -o $@ -c $<

$(NAME): $(OBJ)
	@echo "\033[38;5;125mcompiling $(NAME)\033[0m"
	@$(CC) $(FLAGS) -o $(NAME) $(OBJ)
	@$(eval COMPILED=true)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)
	@rm -f $(NAME)_kid.c

norme:
	@norminette $(SRC:%.o=%.c)

re: fclean all
