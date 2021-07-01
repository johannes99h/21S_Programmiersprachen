program real_wert_einlesen_cycle
   implicit none
   real    :: wert
   integer :: io_err 

   do 
      write(*,*) 'Geben Sie einen Wert vom Datentyp real ein: '
      read(*,*,iostat=io_err) wert

      if ( io_err == 0) then
         write(*,*) 'Ihre Eingabe : ', wert
         exit 
      else
         cycle
      end if
   end do
  
end program real_wert_einlesen_cycle
