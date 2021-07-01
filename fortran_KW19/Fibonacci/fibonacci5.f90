        program fibonacci

        implicit none
        integer :: i, i2, i1, i0, n, n_end, alloc_status, dealloc_status
        real :: g, g1, g2
        !Array für die Fibonacci-Folge
        integer,allocatable,dimension(:) :: fibonacci_numbers
        integer                          :: n1
        !Array für Verhältnisse
        real,allocatable,dimension(:) :: fibonacci_fraction
        integer                        :: n2

        write(*,*) 'Anzahl n (int): '
        read(*,*) n_end
        !Eingabe auf gültige Integer überprüfen

        n1 = n_end
        n2 = n_end

        !dynamische Speicherallokation
        allocate(fibonacci_numbers(n1), stat = alloc_status)
        allocate(fibonacci_fraction(n2), stat = alloc_status)

        !alle Werte der Arrays auf Null setzen (Debug)
        do i = 1, n_end
                fibonacci_numbers(i) = 0
                fibonacci_fraction(i) = 0
                !write(*,*) fibonacci_numbers(i), fibonacci_fraction(i)
        end do 

        n = 0 
        i0 = 0
        i1 = 1
        i2 = 0

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

        !Verhältnis berechnen
        do i = 1, (n_end - 1)
                !Werte berechnen        
                g2 = fibonacci_numbers(i + 1)
                g1 = fibonacci_numbers(i)
                g = g2 / g1
       
                !Werte dem Verhältnis-Array zuweisen       
                fibonacci_fraction(i) = g
        end do

        !beide Arrays ausgeben
        do i = 1,n_end
                write(*,*) fibonacci_numbers(i), fibonacci_fraction(i)
        end do 

        !Deallokation
        deallocate(fibonacci_numbers, stat = dealloc_status)
        deallocate(fibonacci_fraction, stat = dealloc_status) 

        end program fibonacci
