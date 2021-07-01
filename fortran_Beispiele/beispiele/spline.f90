subroutine spline(x, y, y2, n)

implicit none

integer, intent(in) :: n
real, intent(in), dimension(n) :: x,y
real, intent(out), dimension(n) :: y2

integer :: i,ierr
real p,sig
real, allocatable, dimension(:) :: u

allocate(u(n),stat=ierr)
if (ierr /= 0) then
	stop 'Fehler bei der Speicherallocation von u in spline'
endif

y2(1)=0
u(1)=0

do i=2,n-1
	sig=(x(i)-x(i-1))/(x(i+1)-x(i-1))
	p=sig*y2(i-1)+2.
	y2(i)=(sig-1.)/p
	u(i)=(6. * ((y(i+1)-y(i))/(x(i+1)-x(i))-(y(i)-y(i-1))/(x(i)-x(i-1)))  &
                 / (x(i+1)-x(i-1)) - sig*u(i-1) ) / p
end do
y2(n)=0

do i=n-1,1,-1
	y2(i)=y2(i)*y2(i+1)+u(i)
end do

deallocate(u,stat=ierr)
if (ierr /= 0 ) then
	stop 'Fehler bei der Speicherfreigabe von u in spline'
endif

return
end subroutine spline

real function splint(x0,x,y,y2,n)

integer, intent(in) :: n
real, intent(in), dimension(n) :: x,y,y2
real, intent(in) :: x0

integer k,khi,klo
real a,b,h

klo=1
khi=n

do while( (khi-klo) > 1)
	k = (khi+klo)/2
	if( x(k) > x0 ) then
		khi = k 
	else
		klo = k
	endif
end do

h=x(khi)-x(klo)
a=(x(khi)-x0)/h
b=(x0-x(klo))/h
splint=a*y(klo)+b*y(khi)+((a**3-a)*y2(klo)+(b**3-b)*y2(khi))*h*h/6.

return
end
