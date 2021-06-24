CC:=gcc
CFLAGS:= -g -Wall -lmunit

BDIR:=build
LDIR:=libs
ODIR:=objs
TESTDIR:=tests
SRCDIR:=src

MAIN_OBS := $(patsubst $(SRCDIR)/%.c,$(ODIR)/%.o,$(wildcard $(SRCDIR)/*.c))
LIB_OBS  := $(patsubst $(LDIR)/%.c,$(ODIR)/%.o,$(wildcard $(LDIR)/*.c))

TEST_OBS := $(patsubst $(TESTDIR)/%.c,$(ODIR)/%.o,$(wildcard $(TESTDIR)/*.c))

TEST_SRC := $(wildcard $(TESTDIR)/*_test.c)

TEST := $(patsubst $(TESTDIR)/%.c,$(BDIR)/%,$(wildcard $(TESTDIR)/*.c))

all: test

$(ODIR)/%.o: $(LDIR)/%.c
	$(CC) -c -o $@ $^

$(ODIR)/%.o: $(SRCDIR)/%.c
	$(CC) -c -o $@ $^

$(ODIR)/%.o: $(TESTDIR)/%.c
	$(CC) -c -o $@ $^

.PRECIOUS: $(ODIR)/%.o

$(BDIR)/%: $(TESTDIR)/%.c $(MAIN_OBS)
	$(CC) $(CFLAGS) -o $@ $^

test: $(TEST)
	$^

clean: 
	rm -fr $(MAIN_OBS) $(LIB_OBS) $(TEST)

.PHONY: all clean
