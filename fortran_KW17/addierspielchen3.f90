        program addierspielchen
        
        implicit none
        integer :: i, s, i_rand 
        real :: i_rnd, rnd(1)       
 
        write(*,*) 'Wer zuerst 100 hat, hat gewonnen'

        s = 0

        do
        call random_seed()
        call random_number(rnd)

                write(*,*) 'Gebe eine Zahl zwischen 1 und 9 ein: '
                read(*,*) i     !irgendwie auf diese Zahlen beschränken
                
                if (s >= 80 .and. s < 90) then
                        i_rand = 90 - i - s
                elseif (s >= 90) then
                        i_rand = 100 - i - s
                else 
                        i_rnd = rnd(1) * 10
                        i_rand = INT(i_rnd)     !NINT ist unpraktisch
                        write(*,*) 'Zufallszahl: ', i_rnd, i_rand 
                endif

                s = s + i + i_rand
                write(*,*) 'Die neue Summe ist: ', s
        
        if ( s == 100) exit          
        end do         
        
        write(*,*) 'Spiel vorbei'       
 
        end program addierspielchen
