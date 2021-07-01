program falscher_umgang
   implicit none
   integer i
   
   do i = 1, 10, 2
      write(*,*) i 
      i = 5 
   end do
end program falscher_umgang
