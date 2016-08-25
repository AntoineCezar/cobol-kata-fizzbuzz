       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MAX-NUM PIC 9(3).
       COPY fizzbuzz-vars.

       PROCEDURE DIVISION.
       MAIN.
           MOVE 1 to FIZZBUZZ-INPUT
           DISPLAY 'Max iterations? ' WITH NO ADVANCING
           ACCEPT MAX-NUM.
           PERFORM PRINT-NEXT MAX-NUM TIMES.
           STOP RUN
           .

       PRINT-NEXT.
           CALL 'fizzbuzz' USING FIZZBUZZ-INPUT, FIZZBUZZ-OUTPUT
           DISPLAY FIZZBUZZ-OUTPUT
           ADD 1 TO FIZZBUZZ-INPUT
           .
