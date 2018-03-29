COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
EXT = Makefile

.PHONY: all clean fclean re $(COLLEEN) $(GRACE) $(SULLY)

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	@make -f $(COLLEEN).$(EXT) $(COLLEEN)

$(GRACE):
	@make -f $(GRACE).$(EXT) $(GRACE)

$(SULLY):
	@make -f $(SULLY).$(EXT) $(SULLY)

clean:
	@make -f $(COLLEEN).$(EXT) clean
	@make -f $(GRACE).$(EXT) clean
	@make -f $(SULLY).$(EXT) clean

fclean:
	@make -f $(COLLEEN).$(EXT) fclean
	@make -f $(GRACE).$(EXT) fclean
	@make -f $(SULLY).$(EXT) fclean

norme:
	@make -f $(COLLEEN).$(EXT) norme
	@make -f $(GRACE).$(EXT) norme
	@make -f $(SULLY).$(EXT) norme

re:
	@make -f $(COLLEEN).$(EXT) re
	@make -f $(GRACE).$(EXT) re
	@make -f $(SULLY).$(EXT) re
