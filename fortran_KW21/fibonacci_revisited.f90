        program fibonacci_revisited

        implicit none 
        integer :: n
        real :: fiboacci_number

        write(*,*) 'Anzahl der Iterationen: '
        read(*,*) n

        call function fibonacci(n, fibonacci_number)

        write(*,*) 'Fibonacci-Zahl: ', fibonacci_number

        end program fibonacci_revisited


        recursive function fibonacci(n, fibonacci_number)

        implicit none
        integer, intent(in) :: n
        real, intent(out) :: fibonacci_number 
        
        if(n <= 2) then
                fibonacci_number = 1
        else
                fibonacci_number = fibonacci_number(n-1) +
                                   fibonacci_number(n-2)
        endif

        return
        end function fibonacci
