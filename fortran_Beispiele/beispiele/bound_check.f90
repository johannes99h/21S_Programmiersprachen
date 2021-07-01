program bound_check
   implicit none
   
   real, dimension(3) :: a = (/1.0,2.0,3.0/)
   real, dimension(3) :: b = (/4.0,5.0,6.0/)
  
   write(*,*) a(4)

end program bound_check
