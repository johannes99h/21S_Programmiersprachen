program lesen
   implicit none
   integer :: io_error
   integer :: n
   integer :: i
   real    :: y 
    
   open(unit=20,file='wertetabelle.txt',status='old',action='read', &
        iostat=io_error) 

      if ( io_error == 0) then

         do n = 1, 5 
         read(20,*) i, y 
         write(*,*) n,'-te Zeile:', i, y 
         end do
     
       else
           write(*,*) 'Beim OEffenen der Datei ist ein Fehler Nr.', & 
                       io_error,' aufgetreten' 
       end if
   close(unit=20) 
                   
end program lesen
