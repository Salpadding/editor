include wd.mk

main: $(objs) subs/all.o
	$(CC) -o $@ $^

subs/all.o: FORCE
	@(cd $(@D) && $(MAKE))


-include $(deps)

.PHONY: clean FORCE

clean:
	@(cd subs && $(MAKE) clean)
	@rm -f main *.o



