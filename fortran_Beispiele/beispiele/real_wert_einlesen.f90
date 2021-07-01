program werteinlesen
   implicit none
   real :: wert

   write(*,*) 'Geben Sie einen Wert vom Datentyp real ein: '
   read(*,*) wert
   write(*,*) 'Ihre Eingabe : ', wert
   
end program werteinlesen
