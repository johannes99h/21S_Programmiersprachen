        program balkenwaage

        implicit none
        integer :: nl, nr       !Anzahl der Gewichte links & rechts
        real :: l, u
      
        write(*,*) 'Balkenlänge eingeben'
        read(*,*) l 
        write(*,*) 'Anzahl der Gewichtsstücke links und rechts eingeben'
        read(*,*) nl, nr

        !Debugausgabe
        write(*,*) 'l, nl und nr:', l, nl, nr

        if (nl == nr) then
                u = 0.5 * l
                write(*,*) 'Unterstützung in der Mitte bei u=', u
        else
                !Momentenbilanz: nr * u = nl * v
                !mit l = u * v -> nr * u = nl * (l - u)  
                u = (nr * l) / (nr + nl)
                write(*,*) 'Unterstützung bei u=', u
                write(*,*) '(u wird vom linken Balkenende aus gezählt)' 
        end if     
 
        end program balkenwaage
