!
! Beispielprogramm zur Deklaration eines Datenfeldes a
! mit den Komponenten vom Datentyp real a(1), a(2), a(3), a(4)
!
program datenfeld_1 
   implicit none
   real, dimension(4) :: a      ! Deklaration des Datenfeldes a
   integer            :: i      ! integer-Variable i. Diese wird 
                                ! verwendet, um auf die einzelnen i
                                ! Komponenten des Datenfeldes zuzugreifen
! FORTRAN 77 (90/95)                                
   do i = 1, 4                  ! mit dieser Schleife wird jede
      a(i) = real(i*i)          ! Komponente im Datenfeld auf den Wert des
   end do                       ! Index**2 gesetzt
   
! Fortran 90/95
      a = a - 1.5               ! von allen Komponenten von a
                                ! wird 1.5 subtrahiert  
      
   a(3) = 5.0                   ! die 3. Komponente des Datenfeldes wird
                                ! auf den Wert 5.0 gesetzt

   do i = 1, 4                  ! mittels einer Schleife werden 
      write(*,*) a(i)           ! die aktuellen Inhalte an dem Speicherplatz
   end do                       ! des Datenfeldes ausgegeben
     
end program datenfeld_1 
