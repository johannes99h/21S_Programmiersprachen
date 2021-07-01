real function anearest(x0,x,y,n)

implicit none

integer, intent(in) :: n
real, intent(in), dimension(n) :: x,y
real, intent(in) :: x0

integer :: l

if ( x0 < x(1) ) then
	stop 'x0 kleiner als der erste wert !'
endif
if ( x0 > x(n) ) then
        stop 'x0 groesser als der letzte wert !'
endif

do l=2,n
	if( x(l) > x0 ) then
		exit
	endif
end do

if ( (x(l) - x0 ) < ( x0 - x(l-1) ) ) then
	anearest = y(l)
else
	anearest = y(l-1)
endif

return 
end function anearest
