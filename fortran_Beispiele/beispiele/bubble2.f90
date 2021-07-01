program bubble2         
parameter n=1024

real, dimension(n) :: x(n,3), p(n,3)
integer :: l(n)
real :: tmp
integer :: i=0,j,k=1

do
        read (*,*,iostat=i) x(k,1:3),p(k,1:3)
        if (i == 0 ) then
                l(k) = k
                k = k + 1
        else
                k = k - 1
                exit
        endif
        if (k > n ) then
                stop 'Array zu klein!'
        endif
end do

do i = k, 2, -1
        do j = 1, k-1
                if ( x(l(j),1) > x(l(j+1),1) ) then
                        tmp=l(j)
                        l(j)=l(j+1)
                        l(j+1)=tmp
                endif
        end do
end do

do i = 1, k
        write (*,'(6f5.2)') x(l(i),1:3), p(l(i),1:3)
end do
end program bubble2
