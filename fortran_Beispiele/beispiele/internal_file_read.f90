program internal_file_read
   implicit none
   character(len=15) :: werte = '1.234 2.4e-6'
   real :: x, y

   read(werte,*) x, y

   write(*,*) 'intern wurden zugewiesen: '
   write(*,*) 'x = ', x
   write(*,*) 'y = ', y

end program internal_file_read
