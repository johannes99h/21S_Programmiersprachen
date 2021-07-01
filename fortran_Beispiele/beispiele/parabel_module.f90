module koeffizienten
   implicit none
   save                 ! stellt sicher, dass die (an den Speicherplaetzen
                        ! der in dem modul deklarierten Variablen)         
                        ! abgelegten Werte zwischen den einzelnen
                        ! Programmeinheiten, in denen das Modul 
                        ! eingebunden wird, erhalten bleiben 
   real :: a, b, c
end module koeffizienten

program parabel
   use koeffizienten    ! damit sind die in dem Module koeffizienten
                        ! enthaltenen Definitionen bekannt
   implicit none
   integer :: i
   real    :: x
   real    :: f

10 format(6X,A$)
20 format(6X,A3,G12.5,A5,G12.5)
   write(*,*) 'Bitte geben Sie zu f(x) = a*x**2 + b*x + c die Koeffizienten ein'
   write(*,10) 'a = '; read(*,*) a
   write(*,10) 'b = '; read(*,*) b
   write(*,10) 'c = '; read(*,*) c
   write(*,*) 'Zu welchem Wert x soll der Funktionswert f(x) berechnet werden?'
   write(*,10) 'x = '; read(*,*) x
   write(*,20) 'f (',x,' ) = ', f(x) 

end program parabel


real function f (xarg)
  use koeffizienten

  implicit none 
  real, intent(in) :: xarg
  f = a * xarg * xarg + b * xarg + c 
  return 
end function f
