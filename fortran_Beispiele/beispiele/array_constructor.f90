program array_constructor
   implicit none
   integer :: i, j
   real, dimension(12) :: z =  (/ ( (1.0*i+3.0*(j-1),i=1,2), &  
                                     6.0*j,j=1,4) /)
 
   do i = 1,12
      write(*,*) i, z(i)
   end do
   
end program array_constructor
