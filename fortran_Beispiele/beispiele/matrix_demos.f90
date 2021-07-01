program matrix_demos
   implicit none
   integer, parameter      :: n = 3        
   integer, dimension(n,n) :: matrix, matrix_neu
   logical, dimension(n,n) :: mask
   integer :: i, j
   
   do j = 1, n
      do i = 1, n
         matrix(i,j) = (3*i**2 - 3*i+ 2*j) / 2
      end do
   end do
   
   write(*,*) 'Matrix:'
   do i = 1, n
      write(*,*) matrix(i,1:n)
   end do
   
   write(*,*)
   write(*,*) 'Matrixkomponenten in Speicherreihenfolge:'
   write(*,*) matrix
  
   do j = 1, n
      do i = 1, n
         if ( mod(i+j,2) /= 0 ) then
            mask(i,j) = .true.
            else
            mask(i,j) = .false.
         end if
      end do
   end do

   write(*,*)
   write(*,*) 'Logische mask-Matrix:'
   do i = 1, n
      write(*,*) mask(i,1:n)
   end do
   
   write(*,*) 
   write(*,*) 'maxval(matrix,mask) = ', maxval(matrix,mask)
   write(*,*)
   write(*,*) 'maxval(matrix)      = ', maxval(matrix)
   write(*,*)
   write(*,*) 'maxval(matrix,1)    = ', maxval(matrix,1)
   write(*,*) 'Maximalwerte entlang der 1. Dimension => Spaltenmaxima'
   write(*,*) 
   write(*,*) 'maxval(matrix,2)    = ', maxval(matrix,2)
   write(*,*) 'Maximalwerte entlang der 2. Dimension => Zeilenmaxima'
   write(*,*) 
   write(*,*) 'Matrix:'
   do i = 1, n
      write(*,*) matrix(i,1:n)
   end do
   
   write(*,*)
   write(*,*) 'cshift(matrix,1,2), d.h. um einen Index in der 2.Dimension verschieben:'
   matrix_neu = cshift(matrix,1,2)
   do i = 1, n
      write(*,*) matrix_neu(i,1:n)
   end do
   
   write(*,*)
   write(*,*) 'Matrix:'
   do i = 1, n
      write(*,*) matrix(i,1:n)
   end do

   

end program matrix_demos