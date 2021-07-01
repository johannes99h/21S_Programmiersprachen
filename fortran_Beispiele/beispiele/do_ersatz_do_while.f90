program do_ersatz_do_while
   implicit none
   integer :: i = 1, n = 1 
   
   do 
      if (.NOT. ( n < 20)) exit
      write(*,*) i, n
      n = n + i
      i = i + 1
   end do
end program do_ersatz_do_while
