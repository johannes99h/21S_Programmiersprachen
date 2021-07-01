        program zinseszins

        implicit none
        integer :: anlagedauer, i
        real :: startkapital, zinssatz, zinsen, endkapital

        !Abfrage der Nutzereingaben
        write(*,*) 'Startkapital?'
        read(*,*) startkapital
        write(*,*) 'Zinssatz?'
        read(*,*) zinssatz
        write(*,*) 'Anlagedauer?'
        read(*,*) anlagedauer

        !Berechnung
        do i=1,anlagedauer
                zinsen = startkapital * zinssatz
                endkapital = startkapital + zinsen
              write(*,*) startkapital, zinsen, endkapital
                startkapital = endkapital
        end do

        !Dateiausgabe


        end program zinseszins
