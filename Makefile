C_DIR =		C
ASM_DIR =	ASM

.PHONY: all clean fclean re $(C_DIR) $(ASM_DIR)

all: $(C_DIR) $(ASM_DIR)

$(C_DIR):
	@make -C $(C_DIR)

$(GRACE):
	@make -C $(ASM_DIR)

clean:
	@make -C $(C_DIR) clean
	@make -C $(ASM_DIR) clean

fclean:
	@make -C $(C_DIR) fclean
	@make -C $(ASM_DIR) fclean

norme:
	@make -C $(C_DIR) norme
	@make -C $(ASM_DIR) norme

re:
	@make -C $(C_DIR) re
	@make -C $(ASM_DIR) re
