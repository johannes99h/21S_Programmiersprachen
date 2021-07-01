	program test

	implicit none
	integer :: i, n, fibonacci, c

	write(*,*) 'Anzahl des gewünschten Fibonacci-Wertes: '
	read(*,*) n
	write(*,*)

	c = fibonacci(n)	
	write(*,*) n,'. Fibonacci-Zahl: ', c

	end program test



	recursive function fibonacci (n) result(fib_result)
   	
	integer, intent (in) :: n
   	integer :: fib_result
  	
	if (n == 0) then
		fib_result = 0	
	elseif (n > 0 .AND. n <= 2) then
	        fib_result = 1
   	else
      		fib_result = fibonacci (n-1) + fibonacci (n-2)
   	end if

	end function fibonacci
