MAKE_DIR = .Makefiles
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
EXT = Makefile

.PHONY: all clean fclean re $(COLLEEN) $(GRACE) $(SULLY)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	@make -f $(MAKE_DIR)/$(COLLEEN).$(EXT)

$(GRACE):
	@make -f $(MAKE_DIR)/$(GRACE).$(EXT)

$(SULLY):
	@make -f $(MAKE_DIR)/$(SULLY).$(EXT)

clean:
	@make -f $(MAKE_DIR)/$(COLLEEN).$(EXT) clean
	@make -f $(MAKE_DIR)/$(GRACE).$(EXT) clean
	@make -f $(MAKE_DIR)/$(SULLY).$(EXT) clean

fclean:
	@make -f $(MAKE_DIR)/$(COLLEEN).$(EXT) fclean
	@make -f $(MAKE_DIR)/$(GRACE).$(EXT) fclean
	@make -f $(MAKE_DIR)/$(SULLY).$(EXT) fclean

norme:
	@make -f $(MAKE_DIR)/$(COLLEEN).$(EXT) norme
	@make -f $(MAKE_DIR)/$(GRACE).$(EXT) norme
	@make -f $(MAKE_DIR)/$(SULLY).$(EXT) norme

re:
	@make -f $(MAKE_DIR)/$(COLLEEN).$(EXT) re
	@make -f $(MAKE_DIR)/$(GRACE).$(EXT) re
	@make -f $(MAKE_DIR)/$(SULLY).$(EXT) re
