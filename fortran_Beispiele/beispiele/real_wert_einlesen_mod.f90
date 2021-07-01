program real_wert_einlesen_mod
   implicit none
   real    :: wert
   integer :: io_err 

   write(*,*) 'Geben Sie einen Wert vom Datentyp real ein: '
   read(*,*,iostat=io_err) wert

   write(*,*) 'Rueckgabewert von iostat:  io_err = ', io_err
   if ( io_err == 0) then
      write(*,*) 'Ihre Eingabe : ', wert
      else
         stop '=> Fehler in der Eingabe! Programmabbruch.'
    end if
   
end program real_wert_einlesen_mod
