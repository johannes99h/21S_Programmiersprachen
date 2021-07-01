program sqrt_2
implicit none
double precision :: a, b, c, d
   a = sqrt(2.0d0)
   b = sqrt(2.0)
   c = sqrt(dble(2)) 
   d = sqrt(real(2))
   write(*,*) 'Berechnung von Wurzel aus 2 mit doppelter Genauigkeit'
   write(*,*) 'Ergebnis aus Maple     :    1.4142135623730950'
   write(*,*) 'richtig: sqrt(2.0d0)   = ', a
   write(*,*) 'falsch : sqrt(2.0)     = ', b, '<= !!! falsch !!!'
   write(*,*) 'richtig: sqrt(dble(2)) = ', c 
   write(*,*) 'falsch : sqrt(real(2)) = ', d, '<= !!! falsch !!!'
end program sqrt_2
