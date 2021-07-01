program format_beispiel
   implicit none
   integer   :: i = 123456
   real      :: x = 3.141592

   character(len=16) :: string = '(1X,I6,F10.2)'   ! Formatangabe

! Vorstellung der 3 Moeglichkeiten, Formatbeschreiber anzugeben

     ! 1. Moeglichkeit: direkte Angabe der Formatbeschreiberkette
       write(*,'(1X,I6,F10.2)') i, x

     ! 2. Moeglichkeit: Angabe einer Anweisungsnummer, die die zugehoerige
     !                  Format-Anweisung enthaelt
       write(*,100) i, x
100    format(1X,I6,F10.2) 

     ! 3. Moeglichkeit: Angabe einer Zeichenkette, die die 
     !                   Formatbeschreiberkette enthaelt
       write(*,string) i, x
        
end program format_beispiel
