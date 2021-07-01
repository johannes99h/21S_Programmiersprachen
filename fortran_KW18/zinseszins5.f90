        program zinseszins

        implicit none
        integer :: anlagedauer, i, io_error
        real :: startkapital, zinssatz, zinsen, endkapital
        logical :: file_exists

        !Abfrage der Nutzereingaben
        write(*,*) 'Startkapital?'
        read(*,*) startkapital
        write(*,*) 'Zinssatz?'
        read(*,*) zinssatz
        write(*,*) 'Anlagedauer?'
        read(*,*) anlagedauer

        !Überprüfung, ob Datei bereits existiert
        INQUIRE(FILE='kontostand.dat', EXIST=file_exists)

        if (file_exists) then
           !bestehende Datei öffnen & Inhalt ggf. überschreiben
           open(unit=25, file='kontostand.dat', status='replace', &
                action='write', iostat=io_error)
        else 
           !neue Datei erstellen
           open(unit=25, file='kontostand.dat', status='new', &
                action='write', iostat=io_error)
        endif

        if (io_error == 0) then
        
        !Berechnung & Ausgabe
        write(25,*) 'neuer Kontostand pro Jahr'
        do i=1,anlagedauer
                zinsen = startkapital * zinssatz
                endkapital = startkapital + zinsen
                !!!tabel. Ausgabe mit Jahreszahl usw.!!!


                write(25,100) i, endkapital
                100 FORMAT('', I3, F15.2)
                startkapital = endkapital
        end do

        else
                write(*,*) 'Fehler Nr. ', io_error
        endif

        close(unit=25)        
     
        end program zinseszins
