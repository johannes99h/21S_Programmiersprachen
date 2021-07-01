        program Wertetabelle

        implicit none
        integer :: i, j
        integer :: allocstatus,io_err, deallocstatus
        real :: xmin, xmax, y
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
        write(*,*) ''
        write(*,*) 'Allocate-Rückgabewert: ', allocstatus
        write(*,*) ''


        !Debug: Arrayausgabe
        !do i = 1,n
        !        write(*,*) (i, values(i,j), j = 1,m)
        !end do 

 
        !Einlesen der gewünschten Intervallgrenzen
        write(*,*) 'minimaler und maximaler x-Wert:'
        read(*,*, iostat = io_err) xmin, xmax
        if(io_err == 0) then
                write(*,*) ''
        else
                stop 'Fehler in der Eingabe, Real erwartet'
        endif


        !gegebene Funktion
        y = xmin**2 + xmin/2 - 8


        !Debug: Funktionsüberprüfung
        !write(*,*) 'y-Testwert(mit xmin) der Fkt.: ', y
        !write(*,*) ''


        !x-Werte in Array überführen
        values(1,1) = xmin
        values(n,1) = xmax

        do i = 2,(n-1)
                values(i,1) = values((i-1), 1) + (xmax - xmin) / n
        end do
                

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


        !Deallokation
        deallocate(values, stat = deallocstatus)
        write(*,*) ''
        write(*,*) 'Deallocate-Rückgabewert: ', deallocstatus        

        end program Wertetabelle
