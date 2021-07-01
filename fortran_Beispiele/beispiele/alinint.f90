real function alinint(x0,x,y,n)

implicit none

integer, intent(in) :: n
real, intent(in), dimension(n) :: x,y
real, intent(in) :: x0

integer :: l, lu,lo

if ( x0 < x(1) ) then
	stop 'x0 kleiner als der erste wert !'
endif
if ( x0 > x(n) ) then
        stop 'x0 groesser als der letzte wert !'
endif

lu=1
lo=n
do while( (lo-lu) > 1)
        l = (lo+lu)/2
        if( x(l) > x0 ) then
                lo = l
        else
                lu = l
        endif
end do


alinint = y(lu) + ( x0 - x(lu) ) * ( y(lo) - y(lu) ) / ( x(lo) - x(lu) )

return 
end function alinint
