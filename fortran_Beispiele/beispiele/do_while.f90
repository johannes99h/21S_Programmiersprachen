program do_while
   implicit none
   integer :: i = 1, n = 1 
   
   do while ( n < 20)
      write(*,*) i, n
      n = n + i
      i = i + 1
   end do
end program do_while
