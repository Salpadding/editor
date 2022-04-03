src  = $(wildcard *.c)
objs = $(patsubst %.c,%.o,$(src))
deps = $(patsubst %.c,%.d,$(src))

%.o: %.c
	($(CPP) -MM $*.c) > $*.d 
	$(CC) -c -o $@ $*.c $(CFLAGS)
 
