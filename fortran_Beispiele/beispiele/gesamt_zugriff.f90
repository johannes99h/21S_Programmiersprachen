program gesamt_zugriff
   implicit none
   real, dimension (4,3) :: x 
   integer :: i, j

   do j = 1, 3
      do i = 1, 4
           x(i,j) = real(i)+0.1*real(j)
      end do 
   end do

   10 format(3(1X,F4.1))     ! Formatbeschreiber fuer die Matrix
                             ! immer 3 Werte in einer Zeile
 
   write(*,*) 'urspruengliche Matrix:' 
   write(*,10) ( (x(i,j), j=1,3), i=1,4 )
   write(*,*)  
  

   ! von jeder Komponente der Matrix wird 1.0 abgezogen
   ! Fortran 77 - Syntax 
   do j = 1, 3
      do i = 1, 4
           x(i,j) = x(i,j) - 1.0
      end do 
   end do
   write(*,*) 'von jeder Komponente wurde 1.0 abgezogen:' 
   write(*,10) ( (x(i,j), j=1,3), i=1,4 )
   write(*,*)  


   ! von jeder Komponente der Matrix wird nochmals 1.0 abgezogen
   ! Fortran 90/95 - Syntax 
   x = x - 1.0
   write(*,*) 'von jeder Komponente wurde nochmals 1.0 abgezogen:' 
   write(*,10) ( (x(i,j), j=1,3), i=1,4 )
   write(*,*)  

   ! von jeder Komponente wird der Betrag gebildet 
   ! Fortran 90/95 - Syntax 
   x = abs(x)
   write(*,*) 'von jeder Komponente wurde jetzt der Betrag gebildet:' 
   write(*,10) ( x(i,1:3), i=1,4 )
   write(*,*)  
  
end program gesamt_zugriff
