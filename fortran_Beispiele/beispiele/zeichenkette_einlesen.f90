program zeichenkette_einlesen
   implicit none
   character(len=30),parameter :: messlatte='....|....1....|....2....|....3'
   character(len=30) :: zeichenkette1, zeichenkette2

   write(*,*) 'Geben Sie eine Zeichenkette mit max. 30 Zeichen ein:'
   write(*,*) 'zum listengesteuerten Einlesen'
   read(*,*) zeichenkette1
   write(*,*) 

   write(*,*) 'Geben Sie erneut eine Zeichenkette mit max. 30 Zeichen ein:'
   write(*,*) 'zum formatgesteuerten Einlesen'
   read(*,'(A)') zeichenkette2
   write(*,*) 
   write(*,*) 'die beiden Zeichenketten werden nun wieder ausgegeben'
   write(*,*) 

   write(*,*) 'die listengesteuert eingelesene Zeichenkette:'
   write(*,'(A)') messlatte
   write(*,'(A)') zeichenkette1
   write(*,*) 
   write(*,*) 'die formatgesteuert eingelesene Zeichenkette:'
   write(*,'(A)') messlatte
   write(*,'(A)') zeichenkette2
   
end program zeichenkette_einlesen

