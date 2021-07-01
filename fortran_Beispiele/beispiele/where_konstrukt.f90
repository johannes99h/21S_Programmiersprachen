program where_konstrukt
   implicit none
   real, parameter :: nan_wert = -99999.9   ! Der Wert der statt nan
                                           ! (not a number) verwendet wird
   real, dimension (4,3) :: x, y, z 
   integer :: i, j

   do j = 1, 3                             ! Initialisierung des Datenfeldes   
      do i = 1, 4
           x(i,j) = real(i)+0.1*real(j)
      end do 
   end do

   10 format(3(3X,ES14.5))     ! Formatbeschreiber fuer die Matrix
                              ! immer 3 Werte in einer Zeile
    5 format(3(3X,F4.1))
 
   write(*,*) 'urspruengliche Matrix:' 
   write(*,5) ( (x(i,j), j=1,3), i=1,4 )
   write(*,*)  
  

   ! von jeder Komponente der Matrix wird 3.0 abgezogen
   ! Fortran 90/95 - Syntax 
   x = x - 3.0
   write(*,*) 'von jeder Komponente wurde 3.0 abgezogen:' 
   write(*,5) ( (x(i,j), j=1,3), i=1,4 )
   write(*,*)  

   ! von jeder Komponente wird der natuerliche Logarithmus gebildet 
   ! sofern mathematisch zulaessig, andernfalls wird die Komponente
   ! auf den Wert nan_wert gesetzt

   ! Fortran 77 - Syntax 

   do j = 1, 3                         
      do i = 1, 4
           if ( x(i,j) .GT. 0.0 ) then
              y(i,j) = log(x(i,j))
           else 
              y(i,j) = nan_wert
           end if   
      end do 
   end do
   write(*,*) 'Bedingte logarithmische Umformung (Fortran 77)' 
   write(*,10) ( (y(i,j), j=1,3), i=1,4 )
   write(*,*)  


   ! Fortran 90/95 - Syntax 

   where ( x > 0.) 
      z = log(x)
   else where
      z = nan_wert
   end where

   write(*,*) 'Bedingte logarithmische Umformung (where-Konstrukt Fortran 90)' 
   write(*,10) ( (z(i,j), j=1,3), i=1,4 )
   write(*,*)  

          
  
end program where_konstrukt
