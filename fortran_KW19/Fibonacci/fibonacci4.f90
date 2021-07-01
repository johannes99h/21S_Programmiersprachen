        program fibonacci

        implicit none
        integer :: i, i2, i1, i0, n, n_end, status
        integer, dimension(10) :: fibonacci_numbers
        !integer, dimension(:), alloctable :: fibonacci_numbers
        real :: g, g2, g1
        real, dimension(10) ::fibonacci_fraction
        !real, dimension(:), alloctable :: fibonacci_fraction

        write(*,*) 'Anzahl n (int, max. 10 ohne dyn. Speicherallok.): '
        read(*,*) n_end
        !Eingabe auf gültige Integer überprüfen

        !dynamische Speicherallokation
        !allocate(fibonacci_numbers(0:10), stat = status)
        !allocate(fibonacci_fraction(0:n_end), stat = status)

        !Fibonacci-Zahlen berechnen
        do
                n = n + 1
                i2 = i1 + i0

                !Werte dem Array zuweisen
                fibonacci_numbers(n) = i2

                !Swap Funktion
                i0 = i1
                i1 = i2 
        if (n == n_end) exit
        end do

        !Fibonacci-Array ausgeben
        !do i = 1,n
        !        write(*,*) fibonacci_numbers(i) 
        !end do

        !Verhältnis berechnen
        do i = 1, (n-1)
                !Werte berechnen        
                g2 = fibonacci_numbers(i + 1)
                g1 = fibonacci_numbers(i)
                g = g2 / g1
       
                !Werte dem Verhältnis-Array zuweisen       
                fibonacci_fraction(i) = g
        end do

        !beide Arrays ausgeben
        do i = 1,n
                write(*,*) fibonacci_numbers(i), fibonacci_fraction(i)
        end do 

        !Deallokation
        !deallocate(fibonacci_numbers, stat = status)
        !deallocate(fibonacci_fraction, stat = status) 

        end program fibonacci
