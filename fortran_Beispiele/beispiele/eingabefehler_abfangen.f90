program eingabefehler_abfangen
   implicit none
   real    :: x
   integer :: io_err
   
   einlesen: do
     write(*,'(A$)') 'Geben Sie eine reelle Zahl ein: '
     read(*,*,iostat=io_err) x
     if ( io_err == 0) exit
     write(*,*) '=> Achtung: Eingabefehler, bitte Eingabe wiederholen!'
     cycle    
   end do einlesen
   
   write(*,*) 'Eingelesen wurde : ', x

end program eingabefehler_abfangen