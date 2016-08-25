COBC_OPTIONS=-O -Warchaic -Wobsolete

run: main
	./main

run-tests: test
	./test

test: fizzbuzz.so test.cob
	cobc $(COBC_OPTIONS) -x test.cob

main: fizzbuzz.so main.cob
	cobc $(COBC_OPTIONS) -x main.cob

%.so: %.cob
	cobc $(COBC_OPTIONS) $<

clean:
	rm -f main test *.so
