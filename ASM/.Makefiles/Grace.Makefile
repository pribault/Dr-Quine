NAME = Grace
LD = ld
ASM = nasm
FLAGS = 
SRC =	src/grace.s
OBJ = $(SRC:%.s=%.o)
COMPILED = false
FORMAT = macho64
ARCH = $(shell uname -m)

.PHONY: all clean fclean re export

.SILENT:

all: $(NAME)
	@if [ $(COMPILED) = true ]; then echo "\033[38;5;207m$(NAME) done\033[0m"; else echo "\033[38;5;207mnothing to be done for $(NAME)\033[0m";fi

%.o: %.s
	@echo "\033[38;5;125mcompiling $@\033[0m"
	@$(ASM) $(FLAGS) -f $(FORMAT) -o $@ $<

$(NAME): $(OBJ)
	@$(LD) -o $(NAME) -lSystem -arch $(ARCH) $(OBJ)
	@$(eval COMPILED=true)

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

norme:
	@norminette $(SRC:%.o=%.c)

re: fclean all
