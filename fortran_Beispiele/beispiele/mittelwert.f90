real function mittelwert ( func, anfangswert, endwert, n)
   implicit none
   real, external      :: func       ! Unterprogramm als formaler Parameter 
   real, intent(in)    :: anfangswert, endwert
   integer, intent(in) :: n

   real :: delta, x0 
   real :: summe = 0.0
   integer :: i 
   
   delta = (endwert - anfangswert) / real(n-1.0)

   do i = 1, n
     x0 = anfangswert + real(i-1) * delta
     summe = summe + func(x0)
   end do

   mittelwert = summe / real(n) 
   return 
end function mittelwert
