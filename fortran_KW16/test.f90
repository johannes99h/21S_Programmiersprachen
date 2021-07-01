        program test
        
        implicit none
        real :: h1
        real, parameter :: a = 12, b = -40, c = 10 

        h1 = ( -b + sqrt(b*b + (4 * a * c))) / (2 * a)

        


        write(*,*) 'Ergebnis:', h1 

        end program test
