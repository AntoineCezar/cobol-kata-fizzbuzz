       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 ACTUAL PIC X(8).
           01 EXPECTED PIC X(8).
           COPY fizzbuzz-vars.

       PROCEDURE DIVISION.
       MAIN.
           PERFORM MULT-OF-2-GIVES-FIZZ
           PERFORM MULT-OF-3-GIVES-BUZZ
           PERFORM MULT-OF-2-AND-3-GIVES-FIZZBUZZ
           STOP RUN
           .

       COPY assert.

       TEST-FIZZBUZZ-OUTPUT.
           IF FIZZBUZZ-OUTPUT NOT EQUAL EXPECTED THEN
               DISPLAY 'FAIL: ',
               '"', FIZZBUZZ-OUTPUT, '" ≠ "', EXPECTED, '"',
           .

       MULT-OF-2-GIVES-FIZZ.
           DISPLAY 'Multiple of 2 should give Fizz'
           MOVE 8 TO FIZZBUZZ-INPUT

           CALL 'fizzbuzz' USING FIZZBUZZ-INPUT,
                                 FIZZBUZZ-OUTPUT

           MOVE 'Fizz' TO EXPECTED
           MOVE FIZZBUZZ-OUTPUT TO ACTUAL
           PERFORM ASSERT-EQUAL
           .

       MULT-OF-3-GIVES-BUZZ.
           DISPLAY 'Multiple of 3 should give Buzz'
           MOVE 9 TO FIZZBUZZ-INPUT

           CALL 'fizzbuzz' USING FIZZBUZZ-INPUT,
                                 FIZZBUZZ-OUTPUT

           MOVE 'Buzz' TO EXPECTED
           MOVE FIZZBUZZ-OUTPUT TO ACTUAL
           PERFORM ASSERT-EQUAL
           .

       MULT-OF-2-AND-3-GIVES-FIZZBUZZ.
           DISPLAY 'Multiple of 2 and 3 should give FizzBuzz'
           MOVE 6 TO FIZZBUZZ-INPUT

           CALL 'fizzbuzz' USING FIZZBUZZ-INPUT,
                                 FIZZBUZZ-OUTPUT

           MOVE 'FizzBuzz' TO EXPECTED
           MOVE FIZZBUZZ-OUTPUT TO ACTUAL
           PERFORM ASSERT-EQUAL
           .
