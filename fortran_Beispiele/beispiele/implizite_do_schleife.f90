program implizite_do_schleife
   implicit none
   real, dimension(3) :: v, z 
   integer            :: i 

! Fortran 77   
   do i = 1, 3
      v(i) = sqrt(real(i))
   end do

! implizite do-Schleife
   write(*,*) ' Ausgabe des Vektors ueber write(*,*) ( v(i), i = 1, 3) : '
   write(*,*) ( v(i), i = 1, 3)

! Fortran 90/95
   z = v*v
   write(*,*)
   write(*,*) 'Neue Wertzuweisung z=v*v (Fortran 90 - Syntax)'
   write(*,*) 'Ausgabe aller Komponenten von z ueber write(*,*) z :' 
   write(*,*) z
   
end program implizite_do_schleife
