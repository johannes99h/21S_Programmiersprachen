module kreisflaeche
   implicit none
   save
   real, parameter :: pi = 3.141593
   contains 
       real function area_kreis (r)
          implicit none
          real, intent(in) :: r
          
          area_kreis = pi * r * r
       return
       end function area_kreis     
end module kreisflaeche

program kreis
   use kreisflaeche

   implicit none
   real :: radius
   
   
   write(*,'(1X,A$)') 'Geben Sie den Radius des Kreises ein: '
   read(*,*) radius
   
   write(*,*) 'Die Flaeche des Kreises betraegt: ', area_kreis(radius)
   write(*,*) 'Der Umfang des Kreises betraegt:  ', 2.0 * pi * radius
   
end program kreis

