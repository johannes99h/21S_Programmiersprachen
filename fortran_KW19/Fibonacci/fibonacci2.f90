        program fibonacci

        implicit none
        integer :: i2, i1, i0, n_start, n_end
        real :: g, g2, g1

        n_start = 0
        i0 = 1 
        i1 = 1

        write(*,*) 'Anzahl n (int): '
        read(*,*) n_end
        
        do
                n_start = n_start + 1 
                i2 = i1 + i0
                write(*,*) 'Iteration & Fibonacci-Zahl: ', n_start, i2

                g2 = i2
                g1 = i1
                g = g2 / g1
                write(*,*) 'Verhältnis zur vorherigen Zahl: ', g

                i0 = i1
                i1 = i2
        if (n_start == n_end) exit
        end do 

        end program fibonacci
