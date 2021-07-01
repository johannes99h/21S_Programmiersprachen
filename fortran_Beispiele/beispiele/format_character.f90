! 
! Beispielprogramm zur formatierten Ausgabe von Zeichenketten 
!  

program format_character
   implicit none
   character(5) ::  zeichenkette_1 = 'abcde'
   character(10) :: zeichenkette_2 = '1234567890'

   write(*,*) 'Listengesteuerte Ausgabe einzeln:'
   write(*,*)  zeichenkette_1
   write(*,*)  zeichenkette_2
   write(*,*) 
   
   write(*,*) 'Listengesteuerte Ausgabe hintereinander:'
   write(*,*)  zeichenkette_1, zeichenkette_2
   write(*,*) 

   write(*,*) 'formatgesteuerte Ausgabe ''(2A)'':'
   write(*,'(2A)')  zeichenkette_1, zeichenkette_2
   write(*,*) 
  
   write(*,*) 'formatgesteuerte Ausgabe ''(1X,A,1X,A)'':'
   write(*,'(1X,A,1X,A)')  zeichenkette_1, zeichenkette_2
   write(*,*) 

   write(*,*) 'formatgesteuerte Ausgabe ''(1X,A10,1X,A10)'':'
   write(*,'(1X,A10,1X,A10)')  zeichenkette_1, zeichenkette_2
   write(*,*) 

   write(*,*) 'formatgesteuerte Ausgabe ''(1X,A5,1X,A5)'':'
   write(*,'(1X,A5,1X,A5)')  zeichenkette_1, zeichenkette_2
   write(*,*) 

   write(*,*) 'Zeilenumbruch im Formatbeschreiber:'
   write(*,*) 'formatgesteuerte Ausgabe ''(1X,A,/,A)'':'
   write(*,'(1X,A,/,A)')  zeichenkette_1, zeichenkette_2
   write(*,*) 

   write(*,*) 'Setzen von Tabulatoren:'
   write(*,*) 'formatgesteuerte Ausgabe ''(T1,A,T12,A)'':'
   write(*,'(T1,A,T12,A)')  zeichenkette_1, zeichenkette_2
   write(*,*) 

end program format_character
