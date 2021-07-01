        program messdatenauswertung

        implicit none
        integer :: i, n 
        integer :: io_error, read_error
        real :: m, mittelwert1, y
        real :: messreihe1(1024)

        !Datei öffnen
     open(unit=20, file='messung_block1', status='old', action='read', &
          iostat=io_error)

        !Fehlerüberprüfung
        if (io_error /= 0) then
                write(*,*) 'Fehler beim Lesen der Datei'
        endif

        !Mittelwert der ersten Messreihe
        do n = 0, 1023
                read(20,*,iostat=read_error) i, messreihe1(n)
                   if (read_error > 0) then
                      stop "Datenfehler"
                   else if (read_error < 0) then
                      exit
                   endif 
        end do

        do n = 0, 1023
                m = m + messreihe1(n)
        end do 

        mittelwert1 = m / 1024

        write(*,*) mittelwert1        

        !Datei schließen
        close (unit=20)

        end program messdatenauswertung 
