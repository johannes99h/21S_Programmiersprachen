! Beispielprogramm zur Zeichenkettenverarbeitung
! insbesondere zum unterschiedlichem Verhalten von 
! listengesteuertem und formatgesteuertem Einlesen von Zeichenketten

program strings

   implicit none
   character(len=20), parameter :: messlatte = "....5....|....5....|"
   character(len=20)            :: zeichenkette1, zeichenkette2

   write(*,*) 
   write(*,*) 'Bitte geben Sie einen max. 20 Zeichen langen Text ein!'
   write(*,*) 'listengesteuertes Einlesen mit read(*,*)'
   read(*,*)   zeichenkette1
   write(*,*) 
   write(*,*) 'Ausgabe der Zeichenkette nach Einlesen mit read(*,*)' 
   write(*,*)  zeichenkette1
   write(*,*)  messlatte
   write(*,*) 
   write(*,*) 'Bitte geben Sie erneut einen max. 20 Zeichen langen Text ein!'
   write(*,*) 'formatiertes Einlesen mit read(*,''(A)'')'
   read(*,'(A)') zeichenkette2
   write(*,*) 
   write(*,*) "Ausgabe der Zeichenkette nach Einlesen mit read(*,'(A)')"
   write(*,*)  zeichenkette2
   write(*,*)  messlatte

   write(*,*)
   write(*,*) 'weitere Verarbeitung von Zeichenketten:'
   write(*,*)
   write(*,*) 'len(zeichenkette1): ', len(zeichenkette1)
   write(*,*) 'len(zeichenkette2): ', len(zeichenkette2)
   write(*,*) 'len_trim(zeichenkette1): ', len_trim(zeichenkette1)
   write(*,*) 'len_trim(zeichenkette2): ', len_trim(zeichenkette2)
   
   write(*,*)
   write(*,*) 'das 1. bis einschliesslich das 7. Zeichen ausgeben lassen'
   write(*,*) 'zeichenkette1(1:7): ', zeichenkette1(1:7)
   write(*,*) 'zeichenkette2(1:7): ', zeichenkette2(1:7)
   write(*,*)
   write(*,*) 'die Stelle anzeigen lassen, an der das 1. Leerzeichen auftritt'
   write(*,*) "index(zeichenkette1,' '): ", index(zeichenkette1,' ')
   write(*,*) "index(zeichenkette2,' '): ", index(zeichenkette2,' ')

end program strings
