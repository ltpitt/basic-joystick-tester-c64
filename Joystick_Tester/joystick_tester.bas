5  rem ***
10 rem *** main program
15 rem ***
20 rem set text color
30 poke 53280,0
40 rem set border color
50 poke 53280,0
60 rem set background color
70 poke 53281,0
80 print"{clear}"
90 row=2:col=12:gosub 410
100 print" joystick tester"
110 row=24:col=24:gosub 410
120 print"pipisoft, 2021"
130 bu$="nada"
140 j1=not peek(56320)
150 j2=not peek(56321)
160 ifj1and1 then bu$="up   ": gosub 310
170 ifj1and2 then bu$="down ": gosub 310
180 ifj1and4 then bu$="left ": gosub 310
190 ifj1and8 then bu$="right": gosub 310
200 ifj1and16 then bu$="fire "": gosub 310
210 ifj2and1 then bu$="up   ": gosub 310
220 ifj2and2 then bu$="down ": gosub 310
230 ifj2and4 then bu$="left ": gosub 310
240 ifj2and8 then bu$="right": gosub 310
250 ifj2and16 then bu$="fire ": gosub 310
260 rem print joystick last press
270 row=12:col=12:gosub 410
280 print"you pressed: " bu$
290 goto 140
300 end
305 rem ***
310 rem *** play sound effect
315 rem ***
320 for x=54272 to 54296:poke x,0:next
330 poke 54296,15
340 poke 54277,190
350 poke 54278,248
360 poke 54273,17:poke 54272,37
370 poke 54276,17
380 for x=1 to 250:next
390 poke 54276,17
400 return
405 rem ***
410 rem *** move cursor at row, col
415 rem ***
420 poke 780,0
430 poke 781,row
440 poke 782,col
450 sys 65520
460 return
