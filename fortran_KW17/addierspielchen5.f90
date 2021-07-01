        program addierspielchen
        
        implicit none
        integer :: i, s, i_rand, n 
        real :: i_rnd, rnd(25)       
 
        write(*,*) 'Wer zuerst 100 hat, hat gewonnen'

        !Initialisierung d. Laufvar. & Zufallszahlen
        s = 0
        n = 1 
        call random_seed()
        call random_number(rnd)

        do
                write(*,*) 'Gebe eine Zahl zwischen 1 und 9 ein: '
                read(*,*) i
               
                !Überprüfung der Eingabe auf gültige Integer 
                if(i > 9 .or. i < 0) then
                        write(*,*) 'ungültige Eingabe'
                endif
 
                if (s >= 80 .and. s < 90) then
                        i_rand = 90 - i - s
                elseif (s >= 90) then
                        i_rand = 100 - i - s
                else 
                        i_rnd = rnd(n) * 10
                        i_rand = INT(i_rnd)     
                        write(*,*) 'Zufallszahl: ', i_rnd, i_rand
                        n = n + 1 
                endif

                s = s + i + i_rand
                write(*,*) 'Die neue Summe ist: ', s
        
        if ( s == 100) exit          
        end do         
        
        write(*,*) 'Spiel vorbei'       
 
        end program addierspielchen
