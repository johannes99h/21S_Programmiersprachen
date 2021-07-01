!
! Beispielprogramm zur 
! Vereinbarung eines zweidimensionalen Datenfeldes (Matrix)
!
! matrix(i,j) ist die Matrixkomponente in 
!             der i-ten Zeile und der j-ten Spalte   
!
! Das Programm setzt den Wert der Matrixkomponente 
! matrix(i,j) auf den Wert einer Zahl in der Form i.j, so dass sich 
! anhand der Zahl der Zeilen- und der Spaltenindex ablesen laesst

program matrix_beispiel
   implicit none

   real, dimension (3,3) :: matrix   ! Name des Datenfeldes  
   integer               :: i, j     ! Zeilen- und Spaltenindex

   write(*,*) 'Zur Kontrolle des Schleifendurchlaufs werden jeweils'
   write(*,*) 'der aktuelle Zeilenindex, Spaltenindex und Wert innerhalb'
   write(*,*) 'der Schleife ausgegeben'
   write(*,*)
   do j = 1, 3
    do i = 1, 3
       matrix(i,j) = real(i) + 0.1 * real(j) 
       write(*,*) 'Zeile:',i,'   Spalte: ', j,'   Wert: ',  matrix(i,j)
    end do
   end do

! Achtung: Fortran speichert die Komponenten der Matrix sequentiell
!          der Reihe nach _spaltenorientiert_ ab 
!          Im Speicher werden also nacheinander
!          matrix(1,1) matrix(2,1) matrix(3,1) matrix(2,1) ... matrix(3,3)
!          abgelegt.
!          Will man die Laufzeit von Programmen optimieren, sollte
!          auf eine speichergerechte Programmierung der Schleifen achten
!	   d.h. z.B. bei geschachtelten Schleifen die Komponenten der Matrix
!          spaltenweise zu durchlaufen 
  
   write(*,*)
   write(*,*) 'Ausgabe der Matrix & 
               &(write(*,''(3(1X,F5.1))'') ( (matrix(i,j),j=1,3), i=1,3 )'
   write(*,'(3(1X,F5.1))') ( (matrix(i,j),j=1,3), i=1,3 )  
                                               ! implizite geschachtelte
                                               ! write-Anweisung, die dafuer
                                               ! sorgt, dass die uebliche
                                               ! mathematische Reihenfolge
                                               ! eingehalten wird
   write(*,*) 
   write(*,*) 'Ausgabe nach Fortran 90/95 - Syntax'
   do i = 1, 3
     write(*,'(3(1X,F5.1))') matrix(i,1:3)
   end do
     
   write(*,*) 
   write(*,*) 'Fortran 90/95 bietet die Moeglichkeit, Datenfelder'
   write(*,*) 'direkt in der im Speicher vorliegenden (sequentiellen) Form'
   write(*,*) 'auszuschreiben ( write(*,*) matrix )'
   write(*,*)
  
   write(*,*) matrix 
   
   write(*,*)
   write(*,*) 'Bemerkung:' 
   write(*,*) 'Die Komponenten des 2-dim. Datenfeldes wurden in der'
   write(*,*) 'speicheraequivalenten Reihenfolge und somit '
   write(*,*) 'spaltenorientiert ausgegeben.'
   

   
end program matrix_beispiel
