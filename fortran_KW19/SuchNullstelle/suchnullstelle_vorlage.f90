	program suchnullstelle
	
	integer,parameter :: nmax=256
	real,dimension(nmax,2) :: a
	integer :: n,l,ierr

	open(20,file="/home/48/bt160048/nullstelle.dat")
	do n=1,nmax
		read(20,*,iostat=ierr) (a(n,l),l=1,2)
		if (ierr /= 0) exit
	enddo
	close(20)
	if (ierr /= 0 ) n=n-1

	! hier nullstelle suchen/finden

	write(*,*)'Die Nullstelle liegt zwischen',a(l,1),'und',a(l+1,1)
	write(*,*)'Bei den y-Werten             ',a(l,2),'und',a(l+1,2)

	end program suchnullstelle
