program parabel
        implicit none
        integer :: i
        real    :: a, b, c
        real    :: x
        real    :: f 

        write(*,*) 'Das Programm berechnet Werte zu'
        write(*,*) ' f(x) = a*x**2 + b*x +c'
        write(*,*) 'Bitte geben Sie die Werte fuer a, b und c ein:'
        read(*,*) a, b, c
        
        write(*,*) 'Wertetabelle fuer f(x) fuer x von 1 .. 10:'
        write(*,*) '   x          f(x)'
        write(*,*) '------------------'
        
        do i = 0, 10
          x = real(i)
          write(*,'(1X,F5.2,3X,F6.2)') x, f(x,a,b,c)
        end do
          write(*,*)
          write(*,*) 'Aufruf der Funktion f(x,a,b,c) mit direkter Werteuebergabe'
          write(*,*) 'z.B.  f(2.0,1.0,-1.0,-1.0) = ', f(2.0,1.0,-1.0,-1.0)
end program parabel


real function f (x,a,b,c)
        implicit none
        real, intent(in) :: x, a, b, c
        f = a * x * x + b * x + c
        return
end function f
