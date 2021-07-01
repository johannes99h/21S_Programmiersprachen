program do_do_do_exit
   implicit none
   integer :: i, m, n

 
   aussen: do i = 1, 3 

      mitte: do m = 1, 3
         if ( m == 2) exit aussen

           innen: do n = 1, 3
                  write(*,*) 'i = ', i, '; m = ', m, '; n = ', n
           end do innen

      end do mitte

   end do aussen

   
end program do_do_do_exit
