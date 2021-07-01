        program zinseszins

        implicit none
        integer :: anlagedauer, i, io_error
        real :: startkapital, zinssatz, zinsen, endkapital

        !Abfrage der Nutzereingaben
        write(*,*) 'Startkapital?'
        read(*,*) startkapital
        write(*,*) 'Zinssatz?'
        read(*,*) zinssatz
        write(*,*) 'Anlagedauer?'
        read(*,*) anlagedauer

        !bestehende Datei öffnen & Inhalt ggf. überschreiben
        open(unit=25, file='kontostand.dat', status='new', &
             action='write', iostat=io_error)

        if (io_error == 0) then
        
        !Berechnung & Ausgabe
        write(25,*) 'neuer Kontostand pro Jahr'
        do i=1,anlagedauer
                zinsen = startkapital * zinssatz
                endkapital = startkapital + zinsen
                write(25,'(F8.2)') endkapital
                startkapital = endkapital
        end do

        else
                write(*,*) 'Fehler Nr. ', io_error
        endif

        close(unit=25)        
     
        end program zinseszins
