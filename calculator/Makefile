objects = main.o addition.o division.o multiplication.o subtraction.o 

calculator: $(objects)
	cc -o calculator $(objects)

$(objects): %.o:%.c operations.h
	cc -c $< -o $@

clean:
	rm -f sample $(objects)

.PHONY: clean