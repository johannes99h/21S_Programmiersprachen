
! Beispiele zum Formatbeschreiber fuer den Datentyp logical
!     Lw  oder rLw 
!     r : Wiederholungsfaktor
!     w : Feldgroesse

program format_logical
   implicit none
   logical :: wahr = .TRUE., falsch = .FALSE.

   write(*,*) 'Listengesteuerte Ausgabe:'
   write(*,*) wahr, falsch
   write(*,*)
   write(*,*) 'Formatgesteuerte Ausgabe ''(2(1X,L5))'':'
   write(*,'(2(1X,L5))') wahr, falsch
end program format_logical
