program zaehlschleife
   implicit none
   integer :: i, n = 1
   
   do i = 1, 5
      write(*,*) i, n
      n = n + i
   end do
end program zaehlschleife
