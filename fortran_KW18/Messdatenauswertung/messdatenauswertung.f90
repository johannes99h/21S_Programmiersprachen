        program messdatenauswertung

        implicit none
        integer :: io_error, read_error
        real :: messreihe1(n, y)

        !Datei öffnen
        open(unit=20, file='messung', status='old', action='read' &
             iostat=io_error)

        !Fehlerüberprüfung
        if (io_error /= 0) then
                write(*,*) 'Fehler beim Lesen der Datei'
        endif

        !Mittelwert der ersten Messreihe
        do n = 0, 1023
                read(20,*,iostat=read_error) i, y
                   if (read_error > 0) then
                      stop "Datenfehler"
                   else if (read_error < 0) then
                      exit
                   endif
                write(*,*) messreihe1(n, y)        
        end do

        do n = 0, 1023
                m = m + messreihe1(n)
        end do 

        mittelwert1 = m / n

        write(*,*) m        

        !Datei schließen
        close (unit = <20>)

        end program messdatenauswertung 
