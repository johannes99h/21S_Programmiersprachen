        program bubblesort

        implicit none
        real, dimension(10) :: a
        real :: tmp
        integer :: i = 0, j, k = 1, n = 1024

        do     
                read(*,*, iostat = i) a(k)
                if (i == 0) then
                        k = k + 1
                else
                        k = k - 1

                endif
                if (k > n) then
                        stop 'Array zu klein'
                endif

        end do

        do i = k, 2, -1
                do j = 1, i-1
                        if(a(j) > a(j+1)) then
                                tmp = a(j)
                                a(j) = a(j+1)
                                a(j+1) = tmp
                        endif
                end do
        end do

        do i = 1, k
                write(*,*) a(i)
        end do

        end program bubblesort
