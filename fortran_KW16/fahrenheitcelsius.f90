        program fahrenheitcelsius

        implicit none 
        real :: t_celcius, t_fahrenheit

        write(*,*) 'Temperatur in Fahrenheit ein:'
        
        read(*,*) t_fahrenheit

        t_celcius = ( t_fahrenheit -32 ) * 5/9

        write(*,*) 'Temperatur in Celsius: ', t_celcius

        end program fahrenheitcelsius
