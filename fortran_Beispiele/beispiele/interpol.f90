program interpol

implicit none

parameter n=20
parameter PI=3.141592653

real, dimension(n) :: a,b,s
real :: x,anearest,alinint,splint
real :: t
integer :: i

do i=1,n
	a(i)=real(i)*PI/10.
end do
b = sin(a)

call spline(a,b,s,n)

do i=1,33
	x = 0.3 + real(i)*PI/32.
	t=splint(x,a,b,s,n)
	write (*,1000) x,anearest(x,a,b,n),anearest(x,a,b,n)-sin(x), &
                       alinint(x,a,b,n), alinint(x,a,b,n)-sin(x), &
		      splint(x,a,b,s,n),splint(x,a,b,s,n)-sin(x)
1000	format( 1x,f8.5,3x,2(f9.5),3x,2(f9.5),3x,2(f9.5) )
end do

end program interpol
