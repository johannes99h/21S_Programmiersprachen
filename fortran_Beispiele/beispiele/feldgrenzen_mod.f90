program feldgrenzen
  implicit none
  real, dimension(0:2)   :: x
  real, dimension(-3:-1) :: y
  real, dimension(-1:1)  :: z 
  integer :: i

  x(0) = -1.0
  x(1) = 7.0
  x(2) = x(0) * x(1)

  write(*,*) 'x(0) = ', x(0) 
  write(*,*) 'x(1) = ', x(1) 
  write(*,*) 'x(2) = x(0) * x(1) =  ', x(2) 

  
  y = 3.0      ! alle Komponenten von y auf den Wert 3.0 setzen
  write(*,*) 
  write(*,*) 'y(-3) = ', y(-3) 
  write(*,*) 'y(-2) = ', y(-2) 
  write(*,*) 'y(-1) = ', y(-1) 

  do i = -1, 1
     z(i) = real(i)
  end do
  write(*,*) 
  write(*,*) 'z(-1) = ', z(-1) 
  write(*,*) 'z( 0) = ', z(0) 
  write(*,*) 'z(-1) = ', z(-1) 

end program feldgrenzen
