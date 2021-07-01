program exponentiation
   implicit none

   integer :: n
   real    :: x, y

       n = 2
       y = 2.0
       x = 8.0
 
       write(*,*) 'x = ', x, '; n = ', n, '; y = ', y
       write(*,*) 'x**n = ', x**n
       write(*,*) 'x**y = ', x**y
      
       n = 2
       y = 2.0
       x = -8.0

       write(*,*)
       write(*,*) 'x = ', x, '; n = ', n, '; y = ', y
       write(*,*) 'x**n = ', x**n
       write(*,*) 'x**y = ', x**y

       write(*,*)
       write(*,*) 'Jetzt wird eine 1.0/3.0 als Exponent verwendet'
       
       x = 8.0 
       y = 1.0/3.0
       write(*,*)
       write(*,*) 'x = ', x, '; y = ', y
       write(*,*) 'x**y = ', x**y

       x = -8.0 
       y = 1.0/3.0
       write(*,*)
       write(*,*) 'x = ', x, '; y = ', y
       write(*,*) 'x**y = ', x**y

end program exponentiation
