NAME = Sully
CC = gcc
FLAGS = -Wall -Wextra -Werror
SRC =	src/sully.c
OBJ = $(SRC:%.c=%.o)
COMPILED = false

.PHONY: all clean fclean re export

.SILENT:

all: $(NAME)
	@if [ $(COMPILED) = true ]; then echo "\033[38;5;207m$(NAME) done\033[0m"; else echo "\033[38;5;207mnothing to be done for $(NAME)\033[0m";fi

%.o: %.c
	@echo "\033[38;5;125mcompiling $@\033[0m"
	@$(CC) $(FLAGS) -o $@ -c $<

$(NAME): $(OBJ)
	@$(CC) $(FLAGS) -o $(NAME) $(OBJ)
	@$(eval COMPILED=true)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

norme:
	@norminette $(SRC:%.o=%.c)

re: fclean all
