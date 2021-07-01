	program test

	implicit none
	integer :: i, n, fibonacci, c

	write(*,*) 'Anzahl der gewünschten Fibonacci-Werte: '
	read(*,*) n
	write(*,*)

	do i = 1,n	
	c = fibonacci(i)	
	write(*,*) i,'. Fibonacci-Zahl: ', c
	end do

	end program test



	recursive function fibonacci (i) result(fib_result)
   	
	integer, intent (in) :: i
   	integer :: fib_result
  	
	if (i <= 2) then
	        fib_result = 1
   	else
      		fib_result = fibonacci (i-1) + fibonacci (i-2)
   	end if

	end function fibonacci
