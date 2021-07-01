program fortran90_io
   implicit none
   real, dimension(3) :: v 
   integer            :: i 
   
   do i = 1, 3
      v(i) = sqrt(real(i))
   end do

   ! Fortran 90/95 
   write(*,*) ' Ausgabe des Vektors ueber:   write(*,*) v '
   write(*,*) v
   write(*,*) 
   write(*,*) ' Ausgabe der ersten beiden Vektorkomponenten & 
                &ueber:   write(*,*) v(1:2): '
   write(*,*) v(1:2)

end program fortran90_io
