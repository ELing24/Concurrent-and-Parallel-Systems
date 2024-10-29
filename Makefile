.PHONY: test

hotplate: hotplate.cpp
	c++ -std=c++11 hotplate.cpp -o hotplate -pthread

test: hotplate heatmap.py
	./hotplate 200 10 10 10 10 10 100 100 100 10 1000 output.dat 32
	python3 heatmap.py --data=output.dat --png=pretty.png

test1: hotplate heatmap.py
	./hotplate 10 10 20 10 10 10 100 100 100 10 10 output.dat 32
	python3 heatmap.py --data=output.dat --png=pretty.png 