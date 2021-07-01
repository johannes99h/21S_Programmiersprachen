program integer_beispiele
	implicit none
	integer :: i, j, k, l, m, n

	i = 1 
	j = -30000000
	k = 123456789
	l = 2**30            ! 2**31 fuehrt bei einer internen 4 Byte-integer- 
                             ! Darstellung zu compiler error: overflow
	write(*,*) i, j, k, l

end program integer_beispiele
