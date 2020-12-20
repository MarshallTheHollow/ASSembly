org 7C00h

start:

MOV AH, 13h
MOV AL, 1
INT 10h
 MOV    CX,     24
 MOV    BL,     00011110b
 MOV    DL,     26
 MOV    DH,     24
 MOV    BP,     string
 INT    10h

 MOV    CX,  11
 MOV    BL,  00001010b
 MOV    DL,  33

  MOV    DH,  0
  MOV    BP,  a
  INT    10h

  MOV    DH,  1
  MOV    BP,  b
  INT    10h

  MOV    DH,  2
  MOV    BP,  c
  INT    10h

  MOV    DH,  3
  MOV    BP,  d
  INT    10h

  MOV    DH,  4
  MOV    BP,  e
  INT    10h

  MOV    DH,  5
  MOV    BP,  f
  INT    10h

string  DB      'Aleksey Kuyat NMT-383907'
a   DB   '     *     '
b   DB   '    ***    '
c   DB   '   *****   '
d   DB   '  *******  '
e   DB   ' ********* '
f   DB   '***********'

exit:


db 510-($-$$) dup 0
dw 0AA55h