include ../wd.mk

all.o: $(objs)
	$(LD) -r -o $@ $(objs)

-include $(deps)

clean:
	@rm -f *.o
	@rm -f *.d
