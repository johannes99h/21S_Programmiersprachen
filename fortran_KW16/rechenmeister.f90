        program rechenmeister

        implicit none
        real :: a,b
        real :: sum, diff, prod, quot

        write(*,*) 'zwei reelle Zahlen:'
        read(*,*) a,b
        
        sum = a + b
        write(*,*) 'Summe:', sum

        diff = a - b
        write(*,*) 'Differenz:', diff

        prod = a * b
        write(*,*) 'Produkt:', prod

        quot = a / b
        write(*,*) 'Quotient:', quot

        end program rechenmeister
