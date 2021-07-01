program unterprogram_demo2
         implicit none
         
         real :: hypotenusen_laenge   ! der Datentyp des Rueckgabewertes 
                                      ! einer Function muss in der aufrufenden
                                      ! Programmeinheit deklariert werden
         
         real :: a, b, c

         write(*,*) 'Berechnet die Hypotenusenlaenge eines rechtwinkligen Dreiecks'
         write(*,*) 'Bitte die Laenge der Seiten eingeben:'
         read(*,*)  a, b              ! a, b wurden interaktiv eingelesen

         ! c, die Hypotenusenlaenge wird berechnet
         c = hypotenusen_laenge(a,b) 

         write(*,*) 'Die Laenge der Hypotenuse betraegt: ', c

         c = hypotenusen_laenge(3.0,4.0)  ! Statt Variablen, zu denen Werte einlesen
                                  ! wurden, koennen auch fuer die beiden
                                  ! ersten formalen Parameter der
                                  ! Funktion direkt Werte uebergeben werden
         write(*,*) 'Die Laenge der Hypotenuse bei a=3.0, b= 4.0 betraegt: ', c
end program unterprogram_demo2


real function hypotenusen_laenge(x, y) 
         ! Deklaration der formalen Parameter
         implicit none
         real, intent(in)  :: x, y
         ! Deklaration der lokalen Variablen
         real :: wert

         wert = x*x + y*y
         hypotenusen_laenge = sqrt(wert)
         return
end function hypotenusen_laenge 
