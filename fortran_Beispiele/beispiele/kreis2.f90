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
   real :: volume_kugel

   write(*,'(1X,A$)') 'Geben Sie den Radius des Kreises ein: '
   read(*,*) radius
   
   write(*,*) 'Die Flaeche des Kreises betraegt: ', area_kreis(radius)
   write(*,*) 'Der Umfang des Kreises betraegt:  ', 2.0 * pi * radius
   write(*,*) 'Das Volumen einer Kugel betraegt: ', volume_kugel(radius)
   
end program kreis


real function volume_kugel(r)
   use kreisflaeche, only : pi
   implicit none
   real, intent(in) :: r
   volume_kugel = 4.0/3.0 * pi * r**3
return
end function volume_kugel

