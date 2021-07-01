        program addierspielchen
        
        implicit none
        integer :: i, i_rand, s
        
        write(*,*) 'Wer zuerst 100 hat, hat gewonnen'

        do
                write(*,*) 'Gebe eine Zahl zwischen 1 und 9 ein: '
                read(*,*) i

                if ( s > 80) then
                        i_rand = 90 - s 
                elseif (s > 90) then
                        i_rand = 100 - s
                else
                        i_rand = 5
                endif

                s = i + i_rand
                write(*,*) 'Die neue Summe ist: ', s
        
        if ( s == 100) exit  
        end do         
        
        end program addierspielchen
