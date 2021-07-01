!
! Grundlegendes  zu Feldern (engl. Arrays)
!

program array_definition
    implicit none

    real, dimension(10) :: x       ! Fortran 90/95 - Syntax
    real, dimension(5)  :: summe 
    real                :: y(5)    ! ginge noch (alter Fortran 77 - Syntax)   
                                   ! in neuen Programmen nicht mehr verwenden
                        

    real, dimension(5)  :: z = (/2.0,3.0,4.0,5.0,6.0/)  ! Wertvorbelegung 
                                                        ! in Fortran 90/95

    integer :: i, j
 
! Die Arrays werden durch eine do-Schleife mit Werten belegt 
! (eine Moeglichkeit) 

    do i = 1, 10
       x(i) = real(i) 
    end do

    do j = 1, 5
       y(j) = -real(j)
    end do

! Werte ausgeben
!
! 1. Moeglichkeit
! Die Werte in einem Array werden ueber eine do-Schleife wieder ausgegeben

    write(*,*)  'Ausgabe des ersten Feldes x :'
    do i = 1, 10
       write(*,*) x(i) 
    end do

    write(*,*)  'Ausgabe des zweiten Feldes y :'
    do j = 1, 5
       write(*,*) y(j) 
    end do
    
    write(*,*)  'Ausgabe des dritten Feldes z :'
    do j = 1, 5
       write(*,*) z(j) 
    end do
!
! 2. Moeglichkeit
! implicite do-Schleife fuer die Ausgabe
! 
    write(*,*)
    write(*,*)
    write(*,*) 'Ausgabe ueber implizite do-Schleife'
    write(*,*)
    10 format(1X,F12.5)
    write(*,*)  'Ausgabe des ersten Feldes x :'
    write(*,10)  (x(i),i=1,10) 
    write(*,*)  'Ausgabe des zweiten Feldes y :'
    write(*,10)  (y(j),j=1,5) 
    write(*,*)  'Ausgabe des dritten Feldes z :'
    write(*,10)  (z(j),j=1,5) 


    write(*,*)
    write(*,*) 'Ausgabe ueber implizite do-Schleife'
    write(*,*) 'immer 3 Werte in eine Zeile schreiben'
    write(*,*)
    20 format(3(1X,F12.5))
    write(*,*)  'Ausgabe des ersten Feldes x :'
    write(*,20)  (x(i),i=1,10) 
    write(*,*)  'Ausgabe des zweiten Feldes y :'
    write(*,20)  (y(j),j=1,5) 
    write(*,*)  'Ausgabe des dritten Feldes z :'
    write(*,20)  (z(j),j=1,5) 


! 
!
! das Array summe mit Werten vorbelegen
!
  write(*,*)
  write(*,*) 'das Array summe wurde mit Werten vorbelegt'
  write(*,*)
! 
! Fortran 77 
!
    do j = 1, 5
       summe(j) = 1.1
    end do
    write(*,*)
    write(*,*) 'Nach Fortran 77 - Syntax (Wert jeweils 1.1)'
    write(*,*) (summe(j),j=1,5)

! Fortran 90/95
    summe = 0.0
    write(*,*)
    write(*,*) 'Nach Fortran 90/95 - Syntax (Wert jeweils 0.0)'
    write(*,*) (summe(j),j=1,5)

! 
! Addition von Arrays (die allgemeinste Form) 
! 
    do j = 1, 5
       summe(j) = y(j) + z(j)
    end do
    write(*,*)
    write(*,*) 'summe(j) = y(j) + z(j)'
    write(*,*) (summe(j),j=1,5)

!
! Fortran 90/95 - Syntax fuer Arrays der gleichen Laenge 
! 
    summe = y - z  
    write(*,*)
    write(*,*) 'summe = y - z'
    write(*,*) summe

end program array_definition
