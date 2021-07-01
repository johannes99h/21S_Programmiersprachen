program schreiben
   implicit none
   integer :: io_error
   integer :: n
    
   open(unit=20,file='wertetabelle.txt',status='new',action='write', &
        iostat=io_error) 

      if ( io_error == 0) then

         do n = 1, 5 
         write(20,*) n, real(n)
         end do
     
       else
           write(*,*) 'Beim OEffenen der Datei ist ein Fehler Nr.', & 
                       io_error,' aufgetreten' 
       end if
   close(unit=20) 
                   
end program schreiben
