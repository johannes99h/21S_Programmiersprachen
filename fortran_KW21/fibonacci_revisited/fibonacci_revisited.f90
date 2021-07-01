        program fibonacci_revisited

        implicit none 
        integer :: n
	real :: fibonacci_number
        real :: rec_fib

        write(*,*) 'Anzahl der Iterationen: '
        read(*,*) n

        rec_fib = fibonacci_number

        write(*,*) 'Fibonacci-Zahl: ', fibonacci_number

        end program fibonacci_revisited


        real function rec_fib(n)

        integer, intent(in) :: n
	integer :: fibo 		!wofür steht der Integer?!        

        if(n <= 2) then
                fibo = 1
        else
                fibo = fibonacci_number(n-1) + fibonacci_number(n-2)
        endif

        return
        end function rec_fib
