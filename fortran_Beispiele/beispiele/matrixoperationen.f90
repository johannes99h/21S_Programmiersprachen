program matrixoperationen
   implicit none

   real, dimension (3,3) :: m1, m2 = 0.0 , m3 
   integer :: i, j
   
   10 format(3(1X,F4.1))  ! 3 Werte in einer Zeile

   do j = 1, 3
    do i = 1, 3
       m1(i,j) = real(i) + 0.1 * real(j) 
    end do
   end do
  
   write(*,*)
   write(*,*) 'm1 :'
   write(*,10) ( m1(i,1:3), i=1,3)

   m2(1,3) = 1.0
   m2(2,2) = 1.0
   m2(3,1) = 1.0

   write(*,*)
   write(*,*) 'm2 :'
   write(*,10) ( m2(i,1:3), i=1,3)
   
   m3 = m1*m2

   write(*,*)
   write(*,*) 'm3 = m1*m2 :'
   write(*,10) ( m3(i,1:3), i=1,3)

   m3 = matmul(m1,m2)
   write(*,*)
   write(*,*) 'm3 = matmul(m1,m2) :'
   write(*,10) ( m3(i,1:3), i=1,3)

end program matrixoperationen
