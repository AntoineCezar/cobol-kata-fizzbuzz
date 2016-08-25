COBC_OPTIONS=-O -Warchaic -Wobsolete

run: main
	./main

test: test-fizzbuzz
	./test-fizzbuzz

test-fizzbuzz: fizzbuzz.so test-fizzbuzz.cob
	cobc $(COBC_OPTIONS) -x test-fizzbuzz.cob

main: fizzbuzz.so main.cob
	cobc $(COBC_OPTIONS) -x main.cob

%.so: %.cob
	cobc $(COBC_OPTIONS) $<

clean:
	rm -f main test *.so
