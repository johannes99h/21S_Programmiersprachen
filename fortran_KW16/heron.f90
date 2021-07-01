        program heron

        implicit none
        real :: xnnn, xnn, xn, a 

        write(*,*) 'Zahl a:'
        read(*,*) a
        write(*,*) 'Startwert'
        read(*,*) xn
      
        xnn = 0.5 * (xn+(a/xn)) 

        write(*,*) 'Ergebnis der ersten Iteration: ', xnn  

        xnnn = 0.5 * (xnn + (a / xnn))

        write(*,*) 'Ergebnis der zweiten Iteration: ', xnnn

        end program heron
