       program liedtext

        implicit none
        integer :: i = 0;

        do
                i = i + 1 
                write(*,*) '', i 
                write(*,*) 'Hier kommt die Sonne'
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Hier kommt die Sonne'
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Sie ist der hellste Stern von allen'
                i = i + 1
                write(*,*) '', i 
                write(*,*) 'Und wird nie vom Himmel fallen'
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Hier kommt die Sonne'
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Hier kommt die Sonne'
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Sie ist der hellste Stern von allen'
                i = i + 1
                write(*,*) '', i
                i = i + 1
                write(*,*) '', i
                write(*,*) 'Hier kommt die Sonne' 
        if ( i == 9) exit  
        end do

        end program liedtext
