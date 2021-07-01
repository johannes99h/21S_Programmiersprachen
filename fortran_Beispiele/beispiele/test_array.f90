program test_array
   implicit none
   real, dimension (-5:4,3) :: a = 0.0
   integer, dimension(2) :: lindex, uindex 
   
   write(*,*) 'shape(a)   = ', shape(a)
   write(*,*)
   write(*,*) 'size(a)    = ', size(a)
   write(*,*)
   write(*,*) 'lbound(a)  = ', lbound(a)
   write(*,*)
   write(*,*) 'ubound(a)  = ', ubound(a)
   write(*,*)
   lindex = lbound(a)
   write(*,*) 'Der kleinste Zeilenindex ist: ', lindex(1)

end program test_array
