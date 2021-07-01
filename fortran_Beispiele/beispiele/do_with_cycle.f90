program do_with_cycle
   implicit none
   integer :: i

   do i = 1, 5
      write(*,*)
      write(*,*) 'vor der Schleife:  i = ', i
      if ( i == 3) cycle 
      write(*,*) 'in der Schleife:   i = ', i
   end do
      write(*,*)
      write(*,*) 'nach der Schleife: i =', i
end program do_with_cycle

