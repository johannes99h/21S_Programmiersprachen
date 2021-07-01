        program pi

        implicit none

        integer :: summe_bis = 0, i2
        double precision :: p2 = 0

        write(*,*) 'Dieses Programm berechnet Ihnen die Kreiszahl Pi'
        write(*,*) 'Summeieren bis N = '
        read(*,*) summe_bis
        write(*,*)
        write(*,*) 'Also Summation bis ', summe_bis

        do i2 = 0, summe_bis
                p2 = p2 + dble((-1.0d0)**i2)/(2.0d0*dble(i2)+1.0d0)
                !write(*,*) 'p = ', p2
        end do
       
        p2 = 4.0d0 * p2

        write(*,*)
        write(*,*) 'Also ist Pi ungefähr = ', p2
        write(*,*)

        end program pi 
