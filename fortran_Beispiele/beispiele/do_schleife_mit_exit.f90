program do_schleife_mit_exit
   implicit none
   integer :: i

   i = 1

   do
      write(*,*) 'i = ', i
      if ( i == 5 ) exit
      write(*,*) 'i = ', i, '    i**2 = ', i**2  
      i = i + 1
   end do
   write(*,*) 'nach end do angekommen'
   write(*,*) ' i = ', i
end program do_schleife_mit_exit
