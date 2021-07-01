program file_ein_und_ausgabe
   implicit none
   integer :: io_error, read_error
   integer :: n, i
   real    :: y
    
   !--------------------------------------
   ! eine neue Datei zum Schreiben anlegen
   !--------------------------------------

     open(unit=25,file='beispiel.dat',status='new',action='write', &
          iostat=io_error) 

     if ( io_error == 0) then

           do n = 1, 5 
           write(25,*) n, sqrt(real(n))
           end do
     
         else
           write(*,*) 'Beim OEffenen der Datei ist ein Fehler Nr.', & 
                       io_error,' aufgetreten' 
     end if
     close(unit=25)  ! die Zuordung unit number 25 mit der Datei 'beispiel.dat'
                     ! wieder aufheben
   !------------------------------------------
   ! Inhalt einer vorhandenen Datei bei 
   ! unbekannter Zeilenanzahl einlesen und
   ! auf dem Bildschirm ausgeben
   !------------------------------------------
   
    open(unit=20,file='beispiel.dat',status='old',action='read', &
        iostat=io_error) 

    if ( io_error == 0) then
      
      n = 1
      do 
         read(20,*,iostat=read_error) i, y 
         if ( read_error > 0) then
           stop "Datenfehler auf der Datei"
           else if (read_error < 0 ) then 
             exit ! Dateiende erreicht
           else   
           write(*,*) n,'-te Zeile:', i, y
           n = n + 1 
         end if  
      end do
     
     else
        write(*,*) 'Beim OEffenen der Datei ist ein Fehler Nr.', & 
                    io_error,' aufgetreten' 
     end if
   close(unit=20)   

   !------------------------------------------------------------
   ! ein altes (bereits vorhandenes) File zum Schreiben oeffnen
   ! dabei werden die bereits vorhanden Daten ueberschrieben
   !------------------------------------------------------------

     open(unit=25,file='beispiel.dat',status='replace',action='write', &
          iostat=io_error)

     if ( io_error == 0) then

           do n = 1, 5
           write(25,*) n, real(3*n)
           end do
    
         else
           write(*,*) 'Beim OEffenen der Datei ist ein Fehler Nr.', & 
                       io_error,' aufgetreten' 
     end if
     close(unit=25) 


end program file_ein_und_ausgabe
