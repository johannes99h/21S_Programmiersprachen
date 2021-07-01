program drehstromgleichrichter
implicit none
real,parameter :: pi=3.1415926535
real,parameter :: u0=230*1.41
integer,parameter :: n=48
integer :: l
real :: u1,u2,u3,u

do l = 1,n

u1=u0*sin( real(l) * 2. * pi /real( n) + (0./3.) * 2. *pi )
u2=u0*sin( real(l) * 2. * pi /real( n) + (1./3.) * 2. *pi )
u3=u0*sin( real(l) * 2. * pi /real( n) + (2./3.) * 2. *pi )

u = max(u1, u2, u3) - min(u1, u2, u3)
write(*,*) real(l)*2.*pi/real(n), u
end do 

end program drehstromgleichrichter
