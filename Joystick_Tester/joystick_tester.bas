10 REM *** MAIN PROGRAM
20 REM SET TEXT COLOR
30 POKE 53280,0
40 REM SET BORDER COLOR
50 POKE 53280,0
60 REM SET BACKGROUND COLOR
70 POKE 53281,0
80 print "{clear}"
90 ROW=1:COL=12:GOSUB 410
100 PRINT"JOYSTICK TESTER"
110 ROW=24:COL=24:GOSUB 410
120 PRINT"PIPISOFT, 2021"

410 REM *** MOVE CURSOR AT ROW, COL
420 POKE 780,0
430 POKE 781,ROW
440 POKE 782,COL
450 SYS 65520
460 RETURN