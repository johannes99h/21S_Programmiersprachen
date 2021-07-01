program unterprogramm_demo1
        implicit none
        real :: a, b, c
        
        write(*,*) 'Berechnet die Hypotenusenlaenge eines rechtwinkligen Dreiecks' 
        write(*,*) 'Bitte die Laenge der Seiten eingeben:'
        read(*,*)  a, b

        call hypotenuse(a,b,c)  ! a, b wurden interaktiv eingelesen
                                ! c, die Hypotenusenlaenge wird berechnet
        write(*,*) 'Die Laenge der Hypotenuse betraegt: ', c

        call hypotenuse(3.0,4.0,c)  ! Statt Variablen, zu denen 
                                    ! Werte einlesen wurden, 
                                    ! koennen auch fuer die beiden
                                    ! ersten formalen Parameter in der
                                    ! Subroutine direkt Werte uebergeben 
                                    ! werden
        write(*,*)
        write(*,*) 'Aufruf der Subroutine ueber call hypotonuse(3.0,4.0,c)'
        write(*,*) 'Die Laenge der Hypotenuse bei a=3.0, b= 4.0 betraegt: ', c
end program unterprogramm_demo1




subroutine hypotenuse(x, y, z) ! Ein Unterprogramm des Typs subroutine
! Deklaration der formalen Parameter
   implicit none 
   real, intent(in)  :: x, y    
   real, intent(out) :: z
       
! Deklaration der lokalen Variablen
   real :: wert

! Anweisungsteil der Subroutine        
        wert = x*x + y*y
        z = sqrt(wert)
return   
end subroutine hypotenuse
