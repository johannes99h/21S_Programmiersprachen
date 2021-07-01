        program fibonacci

        implicit none
        integer :: i2, i1, i0, n_start, n_end
        real :: g, g1, g0

        write(*,*) 'Anzahl n (int): '
        read(*,*) n_end
        !Eingabe auf gültige Integer überprüfen

        !mit if-Statement schöner schreiben
        n_start = 0
        i0 = 1
        write(*,*) 'Iteration & Fibonacci-Zahl', n_start, i0
        n_start = n_start + 1
        i1 = 1
        write(*,*) 'Iteration & Fibonacci-Zahl', n_start, i1
        
        do
                !Berechnung der eigentlichen Fibonacci-Zahl
                n_start = n_start + 1 
                i2 = i1 + i0
                !write(*,*) 'Iteration & Fibonacci-Zahl: ', n_start, i2

                !Berechnung des Verhältnisses
                g1 = i1
                g0 = i0
                g = g1 / g0
                !write(*,*) 'Verhältnis zur vorherigen Zahl: ', g

                write(*,*) 'Fibonacci & Verhältnis: ', i2, g

                !"Swap-Funktion"
                i0 = i1
                i1 = i2
        if (n_start == n_end) exit
        end do 

        end program fibonacci
