        program heron

        implicit none
        real :: xnnn, xnn, xn, a, d 

        write(*,*) 'Zahl a:'
        read(*,*) a
        write(*,*) 'Startwert xn: '
        read(*,*) xn
        write(*,*) 'Abbruchgrenze d: '
        read(*,*) d     

        do
                xn = 0.5 (xn + (a / xn)
                ! Debugausgabe
                write(*,*) 'xn = ', xn
              
        if (xn < d) exit
                write(*,*) 'Ergebnis: ', xn
        end do
 
        !xnn = 0.5 * (xn+(a/xn)) 

        !write(*,*) 'Ergebnis der ersten Iteration: ', xnn  

        !xnnn = 0.5 * (xnn + (a / xnn))

        !write(*,*) 'Ergebnis der zweiten Iteration: ', xnnn

        end program heron
