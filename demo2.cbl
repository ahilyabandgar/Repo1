IDENTIFICATION DIVISION.
PROGRAM-ID. FactorialProgram.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 Number          PIC 9(4) VALUE 0.
01 Factorial       PIC 9(18) VALUE 1.
01 Counter         PIC 9(4) VALUE 1.

PROCEDURE DIVISION.
Main-Logic.
    DISPLAY "Enter a number: " WITH NO ADVANCING.
    ACCEPT Number.

    IF Number < 0 THEN
    DISPLAY "Factorial is not defined for negative numbers."
    ELSE
    PERFORM Calculate-Factorial
    DISPLAY "The factorial of " Number " is " Factorial
    END-IF.

    STOP RUN.

Calculate-Factorial.
    PERFORM VARYING Counter FROM 1 BY 1 UNTIL Counter > Number
    COMPUTE Factorial = Factorial * Counter
    END-PERFORM.