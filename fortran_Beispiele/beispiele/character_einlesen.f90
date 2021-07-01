program character_einlesen
   implicit none
   character(len=40) zeichenkette
   write(*,*) 'Geben Sie bitte eine Zeichenkette ein!'
   ! read(*,*) zeichenkette
   read(*,'(A)') zeichenkette      !formatiertes Einlesen von Zeichenketten
   write(*,*)
   write(*,*) 'Eingelesen wurde: ', zeichenkette
end program character_einlesen