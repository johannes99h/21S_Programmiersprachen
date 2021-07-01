! Umwandlung von Werten des Datentyps real in
! eine Zeichenkette (character)
! gemaess eines von der Zahl abhaengigen Formatbeschreibers

! Demonstration des Mechanismus der sogenannten "internal files"

program real_in_zeichenkette
   implicit none
   real :: x
   character(len=9)  :: fb
   character(len=12) :: zeichenkette

   write(*,'(1X,A$)') 'Geben Sie bitte einen Wert vom Datentyp real ein: '
   read(*,*) x
   write(*,*) 'Ihre Eingabe: x = ', x
   write(*,*)

   ! Je nach Groesse der eingelesenen Zahl wird nun der Formatbeschreiber fb
   ! festgelegt. Die Feldbreite jedes Formats wurde entsprechend der Laenge
   ! des Strings Zeichenkette gewaehlt

   if ( x > 9999999.0) then
      fb = '(ES12.5)'
   else if ( x < -999999.0) then
      fb = '(ES12.5)'
   else if ( x == 0) then
      fb = '(F12.4)'
   else if ( abs(x) < 0.01 ) then
      fb = '(ES12.5)'
   else
      fb = '(F12.4)'
   end if
   
   ! Umwandlung von x aus dem Datentyp real in einen String 
   
   write(zeichenkette,fb) x
   
   ! Bildschirmausgabe der Zeichenkette
   
   write(*,*) "Es wird nun 'x_'//zeichenkette//'_x' ausgegeben: ", 'x_'//zeichenkette//'_x'

end program real_in_zeichenkette
