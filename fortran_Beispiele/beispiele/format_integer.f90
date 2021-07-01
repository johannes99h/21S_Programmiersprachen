
program format_integer   
! Beispiele zum Formatbeschreiber fuer den Datentyp integer

!     Iw  oder rIw oder rIw.m oder Iw.m

!     r : Wiederholungsfaktor
!     w : Feldgroesse
!     m : Mindestfeldbreite 


   implicit none
   integer :: i = 123, j = -123 , k = 123456 , l = -123456, m = 12345678

   write(*,*) ' definiert wurde:'
   write(*,*) & 
   'integer :: i = 123, j = -123 , k = 123456 , l = -123456, m = 12345678 '
   write(*,*) ' i = 123'
   write(*,*) 'Listengesteuerte Ausgabe einzeln:'
   write(*,*) i
   write(*,*) j
   write(*,*) k
   write(*,*) l
   write(*,*) m
   write(*,*)
   write(*,*) 'Listengesteuerte Ausgabe der Variablenliste'
   write(*,*) i, j, k, l, m
   write(*,*)
   write(*,*) 'Formatgesteuerte Ausgabe ''(5I9)'':'
   write(*,'(5I9)') i, j, k, l, m
   write(*,*)
   write(*,*) 'Formatgesteuerte Ausgabe ''(4I10)'' und 5 Werte:'
   write(*,'(4I10)') i, j, k, l, m
   write(*,*)
   write(*,*) 'Formatgesteuerte Ausgabe ''(I5)'' einzeln:'
   write(*,*) 'Achtung: zu kleine Feldbreite bei k, l, m'
   write(*,'(I5)') i 
   write(*,'(I5)') j 
   write(*,'(I5)') k 
   write(*,'(I5)') l
   write(*,'(I5)') m

end program format_integer   
