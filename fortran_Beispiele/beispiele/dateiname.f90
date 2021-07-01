program dateiname
  implicit none
  character(len=40) :: filename
  character(len=44) :: neuer_filename
  character(len=3)  :: zahlenstring
  integer :: zahl
  
  write(*,*) 'Demoprogramm: zusammengesetzte Dateinamen'
  write(*,*) 'Geben Sie den gewuenschten Dateinamen ein (max. 40 Zeichen):'
  read(*,'(A)') filename
  write(*,*) 'Geben Sie eine positive ganze Zahl (max. 3 Zeichen)'
  write(*,*) 'die als Endung des Dateinamens verwendet werden soll:'
  read(*,*)  zahl
  
  write(zahlenstring,'(I3)') zahl 
  ! internal write (Umwandung integer -> character)
  ! hier ist die Formatangabe zwingend notwendig
  ! zahlenstring wird allerdings von rechts aufgefuellt
  ! so dass weitere Tricks angewendet werden, 
  ! damit spaeter in neuer_filename keine Leerzeichen auftreten
              
  
  if ( zahl < 0 .or. zahl > 999 ) then
     stop 'Eingabefehler'

     else if ( zahl > 0 .and. zahl < 10 ) then               
     neuer_filename = trim(filename)//'.00'//adjustl(zahlenstring)
     ! trim( )schneidet Leerzeichen am Ende der Zeichenkette ab
     ! adjustl( ) fuehrende Leerzeichen in einer Zeichenkette werden
     !            nach hinten gesetzt 

       else if (zahl >= 10 .and. zahl < 100) then
       neuer_filename = filename(1:(len_trim(filename)))&
                        &//'.0'//adjustl(zahlenstring) 
      ! len_trim gibt die Stelle des 1. Leerzeichens an
      ! alternative, aufwendigere Realisierung mit gleicher Funktion wie trim( )  
           else
           neuer_filename = trim(filename)//'.'//adjustl(zahlenstring) 
  end if
  
  write(*,*) 
  write(*,*) 'Der zusammengesetzte Dateiname lautet:'
  write(*,*)  neuer_filename
  
end program dateiname

