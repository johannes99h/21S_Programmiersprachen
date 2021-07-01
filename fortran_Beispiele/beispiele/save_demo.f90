program save_demo
    implicit none
    real :: x 

    do 
    write(*,'(A$)') 'Geben Sie einen Wert fuer x ein (0 fuer Programmende): '
    read(*,*)  x
    if ( x == 0.0) exit
    call ausgabe(x)    
    end do

end program save_demo
    
subroutine ausgabe(x)
    implicit none
    real          :: x
    integer, save :: i
     
    write(*,*)
    write(*,*) 'Anzahl der bisherigen Aufrufe dieser subroutine:', i
    write(*,*) 'eingegeben wurde: x = ', x
    write(*,*)
    i = i +1 
end subroutine ausgabe
