10 ' CHARACTOR EDITER version 2.2 -----
20 '
30 CLS :CLEAR :DIM G(47):PRINT "INPUT PRESET DATA ?":INPUT P$:CLS :IF P$=""GOTO 70
40 GCURSOR (0,7):GPRINT P$:LOCATE 1,3:PRINT "(----)"
50 FOR I=0TO 3:GCURSOR (48,I*8+7):FOR J=0TO 47:G=POINT (J,I+I)*15+POINT (J,I+I+1)*240:GPRINT G;G;G;G;:NEXT :LOCATE 2+I,3:PRINT ">":NEXT
60 FOR I=0TO 47:G(I)=VAL ("&H"+MID$ (P$,I+I+1,2)):NEXT
70 GOSUB 240:LINE (48,0)-(51,3),X,B
80 LINE (48+W*4,V*4)-(51+W*4,V*4+3),X,B:LINE (48+X*4,Y*4)-(51+X*4,Y*4+3),X,B:W=X,V=Y
90 GOSUB 220:X=X+(K=15AND X>0)-(K=14AND X<47),Y=Y+(K=4AND Y>0)-(K=5AND Y<7):ON 1-(K=32)-(K=241)*2-(K=30)*3GOTO 80,100,120,110
100 LINE (48+X*4,Y*4)-(51+X*4,Y*4+3),X,BF:PSET (X,Y),X:G(X)=G(X)+(POINT (X,Y)*2-1)*2^Y:GOTO 90
110 F=-(F+1)*(F<4):GOSUB 240:WHILE INKEY$ :WEND :GOTO 90
120 ON F+1GOTO 130,170,180,190,200
130 L=11+(X>36)*(X-36):GOSUB 230:LOCATE 2,3:PRINT "KEY?"
140 GOSUB 220:K=K-241:IF K<0OR K>4GOTO 160
150 LOCATE 2,3:PRINT "WAIT":G$="":FOR I=0TO L:G$=G$+RIGHT$ ("0"+HEX$ G(X+I),2):NEXT :KEY 6+K,G$
160 GOSUB 240:GOSUB 230:GOTO 90
170 FOR I=0TO 7:LINE (48,I*4)-(239,I*4),X,34952:NEXT :GOTO 90
180 FOR I=0TO 5:LINE (48+I*32,0)-(48+I*32,31),X,8738:NEXT :GOTO 90
190 FOR I=0TO 3:LINE (48+I*48,0)-(48+I*48,31),X,21845:NEXT :GOTO 90
200 FOR I=0TO 7:IF POINT (X,I)LINE (48+X*4,I*4)-(51+X*4,I*4+3),X,BF
210 NEXT :GCURSOR (X,7):GPRINT 0:G(X)=0:GOTO 90
220 K=0:WHILE K=0:K=ASC INKEY$ :WEND :RETURN
230 LINE (48+X*4,0)-(51+(X+L)*4,31),X,B:RETURN
240 LOCATE 0,3:PRINT "[";MID$ (" COPY CELL 8PBAR12PBARDELETE",F*6+1,6);"]":RETURN
