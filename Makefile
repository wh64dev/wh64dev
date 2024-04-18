CC = gcc
CFLAGS = -Wall -Wextra
OBJS = main.o
SRCS = $(OBJS:.o=.c)

OUTPUT = a.out

all: $(OUTPUT)

$(OUTPUT): $(OBJS)
	gcc -o $@ $^ $(CFLAGS)

$(OBJS): $(SRCS)

clean:
	rm -f $(OBJS)
	rm -f $(OUTPUT)

.PHONY: all, clean

