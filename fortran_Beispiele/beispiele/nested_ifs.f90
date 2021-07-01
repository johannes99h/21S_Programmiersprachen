program nested_ifs
! Die verschachtelten Schleifen werden nun benannt,
! um das Programm ein klein wenig uebersichtlicher zu gestalten 
!
    implicit none
    real :: x = 1.0  
    real :: y = 2.0  
    real :: z = 4.0  
 
    write(*,*) x, y, z

    aussen: if ( x >= 0.0) then
            x = 2.0 * z

            mitte: if ( x >= 0.0 ) then
                   x  = 0.5 * y - z

                   innen:if ( z >= 0.0) then
                         z= x*y
                   end if innen

                   y = z * x

            end if mitte

            y = y**2 

    end if aussen
    write(*,*) x, y, z
end program nested_ifs


