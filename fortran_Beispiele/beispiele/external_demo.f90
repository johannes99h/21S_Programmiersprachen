program external_demo
   implicit none
   real           :: mittelwert
   real, external :: f, f1
   
   write(*,*) 'Mittelwert  f(x)  von   [0.0,10.0] (n=3)  = ', &
              mittelwert(f,0.0, 10.0, 3)
   write(*,*) 'Mittelwert  f1(x) von   [0.0,1.0] (n=10)  = ', &
               mittelwert(f1,0.0, 1.0, 10)
   
end program external_demo


real function f(x)
! Die nutzerdefinierte Funktion f(x)
   implicit none
   real, intent(in) :: x 
      f  = x
   return
end function f


real function f1(x)      
! Die nutzerdefinierte Funktion f1(x)
   implicit none
   real, parameter :: pi = 3.141593
   real, intent(in) :: x 
       f1 = 2.0 * pi * x**3
   return 
end function f1 


real function mittelwert (func, anfangswert, endwert, n)
! Unterprogramm zur Mittelwertberechung
   implicit none
   real, external      :: func     
   real, intent(in)    :: anfangswert, endwert
   integer, intent(in) :: n
   real                :: delta, summe
   integer             :: i 
         
   delta = (endwert - anfangswert) / real(n-1)
   summe = 0.0

   do i = 1, n
     summe = summe + func(real(i-1)*delta)
   end do

   mittelwert = summe / real(n) 
   return 
end function mittelwert


