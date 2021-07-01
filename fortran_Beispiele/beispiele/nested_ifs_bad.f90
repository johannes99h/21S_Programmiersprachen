program nested_ifs_bad
! 
! so unuebersichtlich sollte man es tunlichst nicht machen 
!
    implicit none
    real :: x = 1.0  
    real :: y = 2.0  
    real :: z = 4.0  
    write(*,*) x, y, z
    if ( x >= 0.0) then
    x = 2.0 * z
    if ( x >= 0.0 ) then
    x  = 0.5 * y - z
    if ( z >= 0.0) then
    z= x*y
! Bitte loeschen Sie das 'end if' der folgenden Zeile und
! vergleichen Sie die Compiler-Fehlermeldung mit derjenigen
! des Programms mit den benannten if-Schleifen
! wenn Sie die korrespondierende Zeile loeschen
!    end if 
    y = z * x
    end if 
!    end if 
    y = y**2 
    end if 
    write(*,*) x, y, z
end program nested_ifs_bad


