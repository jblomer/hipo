CXX = g++
CXXFLAGS = -std=c++14 -Wall -pthread -Wall -g -O2 $(shell root-config --cflags)
LDFLAGS = $(shell root-config --libs) -lROOTNTuple

all: convert draw

convert: convert.C
	$(CXX) $(CXXFLAGS) -o$@ $< $(LDFLAGS)

draw: draw.C
	$(CXX) $(CXXFLAGS) -o$@ $< $(LDFLAGS)

