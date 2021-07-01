!
! Beispiele zur Initialisierung von 2-dimensionalen Feldern
!
program matrix_reshape
   implicit none

   ! matrix_1 ist 4x3-Matrix (4 Zeilen und 3 Spalten)
   ! und wird bei der Variablendeklaration
   ! gleich mit Werten belegt
   ! 
   ! In der Matrix soll stehen
   ! 
   !   1.0 2.0 3.0
   !   1.0 2.0 3.0
   !   1.0 2.0 3.0
   !   1.0 2.0 3.0
   ! 

   real, dimension(4,3) :: matrix_1 = & 
         reshape( (/1.,1.,1.,1.,2.,2.,2.,2.,3.,3.,3.,3./), (/4,3/) )
   
   integer :: i, j  ! Hilfsvariablen fuer die implizite do-Schleife 
                    ! bei der Ausgabe der Matrixelemente

   ! Formatbeschreiber fuer eine Zeile der Matrix
   10 format(3(2X,F3.1))   ! immer 3 Matrixelemente in einer Zeile 
                           ! mit jeweils 2 Blanks, dann die 
                           ! Festpunktzahl 3 Felder breit  
                           ! 1 Nachkommastelle und 1 Vorkommastelle
 
   write(*,*) 'Ausgabe der Matrix ueber eine implizite do-Schleife: ' 
   write(*,*)
   write(*,*) '10 format(3(2X,F3.1))'
   write(*,*) 'write(*,10)  ( (matrix_1(i,j), j=1,3), i=1,4 :'
   write(*,*) 
   ! Fortran 77
   write(*,10)  ( (matrix_1(i,j), j=1,3), i=1,4) 
   
   ! Fortran 90
   write(*,*)
   write(*,*) 'Ausgabe der Matrix mit'
   write(*,*) 'write(*,10) matrix(i,1:3) : '
   write(*,*) 
   do i = 1, 4
     write(*,10) matrix_1(i,1:3)
   end do
   
end program matrix_reshape
