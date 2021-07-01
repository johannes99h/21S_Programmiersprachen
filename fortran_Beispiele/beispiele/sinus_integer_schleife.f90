program sinus_integer_schleife
! 
! die Verbesserung von sinus.f90
!
! was man vermeiden sollte: (sinus.f90)
! real-Schleifenvariablen koennen aufgrund von Rundungsfehlern
! aufgrund der begrenzten Zahlendarstellungsgenauigkeit zu
! Abweichungen in den Durchlaufzahlen fuehren 
! (system- und compilerabhaengig; testen z.B. mit a=0.0, b=1.0, s = 0.001)
! besser => Schleifenindizes vom Datentyp integer
!
! hier die korrigierte Version
!
    implicit none
    real :: a, b, s, x
    integer :: n = 0
   
    integer :: i, schrittanzahl

    write(*,*) 'Tabellierung von sin(x) im Intervall [a,b] mit Schrittweite s'
    write(*,'(A$)') 'Bitte geben die untere Intervallgrenze a ein: '
    read(*,*) a
    write(*,'(A$)') 'Bitte geben die obere Intervallgrenze b ein:  '
    read(*,*) b
    write(*,'(A$)') 'Bitte geben die Schrittweite s ein:           '
    read(*,*) s

    write(*,*) '    x         sin(x) '
    write(*,*) '---------------------'
!    
! der unguenstige Teil aus sinus.f90  
!
!    do x = a, b, s
!       write(*,'(F12.6,3X,F6.4)') x, sin(x)
!        n = n + 1
!     end do

! dieser wird besser ersetzt durch
!
! 
     schrittanzahl = max(nint((b-a+s)/s),0)
     x = a
     n = 0
     do i = 1, schrittanzahl
       write(*,'(F12.6,3X,F6.4)') x, sin(x)
       x = x + s
       n = n + 1
     end do
         
     
    write(*,*) 'Anzahl der Schleifendurchlaeufe:  ', n
    write(*,*) 'berechnete Zahl an Durchlaeufen:'
    write(*,*) 'Theorie: max(int( (b-a+s)/s ), 0) :', max(int( (b-a+s)/s ), 0)
    write(*,*) 'Theorie: max(nint( (b-a+s)/s ), 0):', schrittanzahl
    
end program sinus_integer_schleife
