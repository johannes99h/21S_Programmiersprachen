        program heron

        implicit none
        integer :: n
        real :: xnn, xn, a, d, delta_x 
       
        !Initialisierung des Iterationszählers
        n = 0
 
        !Eingabe
        write(*,*) 'Zahl a:'
        read(*,*) a
        write(*,*) 'Startwert xn: '
        read(*,*) xn
        write(*,*) 'Abbruchgrenze d: '
        read(*,*) d           

        write(*,*) 'Beginn der Berechnung'
        write(*,*) '--------------------'

        !Berechnung von  n-Schleifen
        do
                xnn = 0.5 * (xn + (a / xn))
                write(*,*) 'Iteration & Ergebnis: ', n, xnn

                !Berechnung zum späteren Vgl. mit Abbruchbed.
                delta_x = xn - xnn
                !write(*,*) 'delta_x: ', delta_x         !Debug

                !Iteration
                n = n + 1 

                !"Swap-Funktion"
                xn = xnn        
                xnn = 0
                !write(*,*) 'xn & xnn: ', xn, xnn        !Debug

                write(*,*) '--------------------'

        if (delta_x < d) then 
                write(*,*) 'Abbruchbedingung erreicht!'
                !write(*,*) 'Iteration & Ergebnis: ', n, xn
        exit
        endif
        end do

        end program heron
