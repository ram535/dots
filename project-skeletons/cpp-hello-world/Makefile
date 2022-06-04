CXX:=g++
CXXFLAGS:=--std=c++2a -g -Wall -lfmt

all: compile

compile: __PROJECT-NAME__.cpp
	$(CXX) $(CXXFLAGS) -o __PROJECT-NAME__ $^

run: __PROJECT-NAME__
	./__PROJECT-NAME__

clean: __PROJECT-NAME__
	rm __PROJECT-NAME__

.PHONY: all run clean
