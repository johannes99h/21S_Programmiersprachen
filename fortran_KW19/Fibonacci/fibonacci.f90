        program fibonacci

        implicit none
        integer :: i2, i1, i0, n

        n = 0
        i0 = 0
        i1 = 0

        write(*,*) 'Startwert (int): '
        read(*,*) i0
        ! falsche Eingaben abfangen
        
        do
                n = n + 1 
                i2 = i1 + i0
                write(*,*) 'Iteration & Fibonacci-Zahl: ', n, i2
                i0 = i1
                i1 = i2
        !write(*,*) i0, i1   Debugausgabe
        if ( n == 100) exit
        end do 

        end program fibonacci
