module kreiszahl
  implicit none
  save
     real, parameter :: pi = 3.141593
end module kreiszahl   

program kreis
  implicit none
  real :: radius, umfang
  ! Deklaration der Function
  real :: area  

  write(*,*) 'Berechnung von Umfang und Flaeche eines Kreises'
  write(*,*) 'Geben Sie den Radius ein:'
  read(*,*) radius
  call kreisumfang (radius,umfang)
  write(*,*) 'Umfang : ', umfang
  write(*,*) 'Flaeche: ', area(radius)
 
end program kreis

subroutine kreisumfang(r,u)
use kreiszahl
   implicit none
   real, intent(in)  :: r
   real, intent(out) :: u
      u = 2.0 * pi * r
   return   
end subroutine kreisumfang


real function area (r)
use kreiszahl
   implicit none
   real, intent(in) :: r
   area = pi * r * r
   return
end function area
