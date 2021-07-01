      PROGRAM ALT
      IMPLICIT NONE
      REAL X, SUMME
C
      WRITE(*,*) 
     *    'Das Programm addiert die von Ihnen eingegebenen Zahlen'
      WRITE(*,*)
	WRITE(*,*) 'Wollen Sie die Summation abschliessen,' 
      WRITE(*,*) 'so geben Sie als Zahl 0 ein'
      WRITE(*,*)
C 
      SUMME = 0.0
      X = 0.0
C      
100   CONTINUE
      SUMME = SUMME + X
      WRITE(*,'(1X,A$)') 'Geben Sie die Zahl ein: '
      READ(*,*) X
      IF ( X .NE. 0.0) GOTO 100
C
      WRITE(*,*) 
      WRITE(*,*) 'Die Summe betraegt: ', SUMME
      END PROGRAM

