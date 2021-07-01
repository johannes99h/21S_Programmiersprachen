program feldgrenzen
  implicit none
  real, dimension(0:2) :: x
  
  x(0) = -1.0
  x(1) = 7.0
  x(2) = x(0) * x(1)
  
  write(*,*) 'x(0) = ', x(0) 
  write(*,*) 'x(1) = ', x(1) 
  write(*,*) 'x(2) = x(0) * x(1) =  ', x(2) 

end program feldgrenzen
