program do_do_do_exit
   implicit none
   integer :: i, m, n

 
   do i = 1, 3 

      do m = 1, 3
         if ( m == 2) exit

           do n = 1, 3
           write(*,*) 'i = ', i, '; m = ', m, '; n = ', n
           end do

      end do

   end do

   
end program do_do_do_exit
