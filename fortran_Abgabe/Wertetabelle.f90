        program Wertetabelle

        implicit none
        integer :: i, j, i_min
        integer :: allocstatus,io_err, deallocstatus
        real :: xmin, xmax, y, tmp, i_breite
        real,allocatable,dimension(:,: ) :: values
        integer                          :: n, m


        !Definition der Arraygröße
        write(*,*) 'Wie viele y-Werte sind gewünscht?'
        read(*,*, iostat = io_err) n
        if(io_err == 0) then
                write(*,*) ''
        else
                stop 'Fehler in der Eingabe, nur Integer erlaubt'    
        endif
        m = 2
        allocate(values(n,m), stat = allocstatus)
        !write(*,*) ''
        !write(*,*) 'Allocate-Rückgabewert: ', allocstatus
        !write(*,*) ''


        !Einlesen der gewünschten Intervallgrenzen
        write(*,*) 'minimaler und maximaler x-Wert:'
        read(*,*, iostat = io_err) xmin, xmax
        if(io_err == 0) then
                write(*,*) ''
        else
                stop 'Fehler in der Eingabe, Real erwartet'
        endif


        !x-Werte in Array überführen
        values(1,1) = xmin
        values(n,1) = xmax

        i_breite = (xmax - xmin) / n

        do i = 2,(n-1)
                values(i,1) = values((i-1), 1) + i_breite
        end do
        
        write(*,*) 'Intervallbreite: ', i_breite        
        write(*,*) ''


        !Berechnung der Werte + Überführung
        do i = 1,n
                values(i,2) = values(i,1)**2 + values(i,1)/2 - 8
        end do


        !Ausgabe der Wertetabelle
        do i = 1,n
                write(*,'(i4)', ADVANCE='NO'), i 
                write(*,*) (values(i,j), j = 1,m)
        end do


        !Wert i, für den y am kleinsten ist -> Sortieralgorithmus
        do i = 1,n
                if (values(i,2) < values((i-1),2)) then
                        tmp = values(i,2)
                        i_min = i
                endif
        end do
        write(*,*) ''
        write(*,*) 'kleinstes y =', tmp, 'bei i =', i_min


        !Deallokation
        deallocate(values, stat = deallocstatus)
        !write(*,*) ''
        !write(*,*) 'Deallocate-Rückgabewert: ', deallocstatus        

        end program Wertetabelle
