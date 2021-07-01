        program addierspielchen
        
        implicit none
        integer :: i1,i2,i3,i4,i5,i6,i7,i8,i9,i_sum
        
        write(*,*) 'Wer zuerst 100 hat, hat gewonnen'
        write(*,*) 'Zahlen 1 bis 9 eingeben'
        read(*,*) i1, i2, i3, i4, i5, i6, i7, i8, i9
        i_sum = i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9
        
        !Debugausgabe
        write(*,*) 'Summe = i_sum', i_sum

        if(i_sum == 100) then
                write(*,*) 'Spieler gewonnen'
        elseif(i_sum < 90) then
                !"addiere 100-Summe" - was soll ich tun?!
        elseif(i_sum < 80) then
                !"addiere 90-Summe" - was soll ich tun?!
        endif 
                !Zufallszahl generieren
 
        end program addierspielchen
