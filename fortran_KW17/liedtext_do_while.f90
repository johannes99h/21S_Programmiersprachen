       program liedtext

        implicit none
        integer :: i = 0;

        do while ( i < 10 )
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
        end do

        end program liedtext
