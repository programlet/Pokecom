10 ' FLYDOT REVOLUTION ----------------
20 '
30 CLEAR :RANDOMIZE :DIM C$(11):B$=CHR$ 135,J$=" "+CHR$ 236
40 CLS :S=0
50 T$="":IF S>5LET T$="FLYDOT REVOLUTION"
60 S=-(S+1)*(S<6):LOCATE 12:PRINT T$:K=K-(INKEY$ <>""):IF NOT (K>0AND S=3)GOTO 50
70 LOCATE 11,3:PRINT "(C)1999 MINDELIGHT"
80 FOR I=0TO 16:FOR J=-1TO 1STEP 2:LOCATE 16+(16-I)*J,2:PRINT " START! ":NEXT :NEXT
90 LOCATE 15,2:PAUSE "LET'S TRY!":L=0
100 CLS :LOCATE 16,1:PRINT USING "LEVEL##";L+1:LINE (90,23)-(141,28),B
110 FOR I=0TO 11:C$(I)=B$:FOR J=0TO 15:C$(I)=C$(I)+MID$ (J$,1-(RND 100>96-L*2),1):NEXT :C$(I)=C$(I)+B$
120 LINE (92+I*4,25)-(95+I*4,26),BF:NEXT :X=0,Y=0,M=0,C=0,G=18+L*6
130 CLS :FOR I=0TO 3:LOCATE 12:PRINT C$(I);G-I:NEXT :G=G-3,C=3:LOCATE 0,0:PRINT "READY"
140 FOR I=0TO 7:PSET (119,I):FOR W=0TO 149:NEXT :NEXT :PRINT "GO!!":PRINT :PRINT
150 PSET (119+X,8+Y),X:M=M-0.3-(INKEY$ <>"")*0.6,X=X+M,Y=Y+1,P=POINT (119+X,8+Y):ON 1-(Y>7)-(P<>0)*2GOTO 150,160,180,180
160 C=-(C+1)*(C<11),G=G-1,Y=0:LOCATE 12:PRINT C$(C);G:IF G>-2GOTO 150
170 CLS :LOCATE 13,2:PAUSE "TRY NEXT LEVEL":L=L+1:IF L<10GOTO 100ELSE 
180 FOR I=0TO 1:FOR J=0TO 6:LINE (119+X-J,8+Y-J)-(119+X+J,8+Y+J),X,B:NEXT :NEXT :GOTO 100
