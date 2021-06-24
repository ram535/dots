CXX:=g++
CXXFLAGS:=--std=c++2a -g -Wall

BDIR:=build
LDIR:=libs
ODIR:=objs
TESTDIR:=tests
SRCDIR:=src

# substitute all the cpp files located in src
# src/<name-cpp-file>.cpp to objs/<name-obj-file>.o 
MAIN_OBS := $(patsubst $(SRCDIR)/%.cpp,$(ODIR)/%.o,$(wildcard $(SRCDIR)/*.cpp))
# substitute all the cpp files located in libs
# libs/<name-cpp-file>.cpp to objs/<name-obj-file>.o 
LIB_OBS  := $(patsubst $(LDIR)/%.cc,$(ODIR)/%.o,$(wildcard $(LDIR)/*.cc))

TEST_OBS := $(patsubst $(TESTDIR)/%.cpp,$(ODIR)/%.o,$(wildcard $(TESTDIR)/*.cpp))

TEST_SRC := $(wildcard $(TESTDIR)/*_test.cpp)

TEST := $(patsubst $(TESTDIR)/%.cpp,$(BDIR)/%,$(wildcard $(TESTDIR)/*.cpp))

all: test

$(ODIR)/%.o: $(LDIR)/%.cc
	$(CXX) -c -o $@ $^

# let's suppose the are two files in src directory
# foo.cpp, bar.cpp
# the code below is the same as doing
# $(CXX) -c -o foo.o foo.cpp
# $(CXX) -c -o bar.o bar.cpp
# another thing to notice is that make implicity insert CXXFLAGS
# $(CXX) $(CXXFLAGS) -c -o bar.o bar.cpp
$(ODIR)/%.o: $(SRCDIR)/%.cpp
	$(CXX) -c -o $@ $^

$(ODIR)/%.o: $(TESTDIR)/%.cpp
	$(CXX) -c -o $@ $^

# When make forms a chain of rules to produce a prerequisite, it
# treats all files created by the intermediate chains as
# "intermediate" and removes then when the target is created.
# make was deleting my objs file after everythin was compile.
# This rule prevent that.
.PRECIOUS: $(ODIR)/%.o

$(BDIR)/%: $(TESTDIR)/%.cpp $(MAIN_OBS) $(LIB_OBS)
	$(CXX) $(CXXFLAGS) -o $@ $^

test: $(TEST)
	$^

clean: 
	rm -fr $(MAIN_OBS) $(LIB_OBS) $(TEST)

.PHONY: all clean
