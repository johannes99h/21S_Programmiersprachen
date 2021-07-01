! --------------------------------------------
! Das Programm berechnet aus 
!         Radius und Laenge sowie
!         der Dichte 
! die Masse von massiven Zylinderkoerpern   
! --------------------------------------------


module koerperdefinition 
    implicit none
    save
   
    real, parameter :: pi = 3.141593
    character(len=74), parameter :: fb_zylinder = & 
     "(/3X,'Radius =',1X,G12.5/,3X,'Laenge =',1X,G12.5/,3X,'Dichte =',1X,G12.5)"
    
    type :: zylinder
            sequence 
            real :: radius
            real :: laenge
            real :: dichte
     end type zylinder
end module koerperdefinition


module koerpermethoden
    use koerperdefinition
    implicit none 
    save

    contains

    subroutine ausgabe(zyli)
    ! formatierte Ausgabe der Zylinderdaten
       implicit none
       type(zylinder), intent(in) :: zyli
       write(*,fb_zylinder) zyli%radius, zyli%laenge, zyli%dichte
    end subroutine ausgabe
 
    subroutine einlesen(zyli)
    ! formatierte Ausgabe der Zylinderdaten
       implicit none
       type(zylinder), intent(out) :: zyli
       real :: r, l, d
       5 format(1X,A$)
       write(*,*) 
       do
          write(*,5) ' Radius = '; read(*,*) r
          if ( r > 0.0 ) exit
       end do
       do
          write(*,5) ' Laenge = '; read(*,*) l
          if ( l > 0.0 ) exit
       end do
       do
          write(*,5) ' Dichte = '; read(*,*) d
          if ( d > 0.0 ) exit
       end do
       write(*,*) 
       zyli = zylinder(r,l,d)
    end subroutine einlesen
 
    real function volumen(zyli)
    ! berechnet das Volumen eines Zylinders
       implicit none
       type(zylinder),intent(in) :: zyli 
          volumen = pi * (zyli%radius)**2 * (zyli%laenge)           
    return
    end function volumen

    real function masse(zyli)
    ! berechnet die Masse des Zylinders 
        implicit none
        type(zylinder),intent(in) :: zyli 
           masse = pi * (zyli%radius)**2 * (zyli%laenge) * (zyli%dichte) 
     return
     end function masse    

end module koerpermethoden


program gewichtsberechnung
  use koerpermethoden
  implicit none
  type(zylinder) :: koerper1 = zylinder(2.0,5.0,19.3)
  type(zylinder) :: koerper2 
   
  write(*,*) 'Der 1. Zylinder wird beschrieben durch:'
  call ausgabe(koerper1)
  write(*,*)
  write(*,*) 'Berechnete Groessen:'
  write(*,*) '     Volumen = ', volumen(koerper1)
  write(*,*) '     Masse   = ', masse(koerper1)
  write(*,*)
  write(*,*)  
  write(*,*) 'Fuer den 2. Zylinder werden nun von Ihnen die Werte eingelesen'
  call einlesen(koerper2)
  write(*,*) ' Die von Ihnen eingegebenen Werte '
  call ausgabe(koerper2)
  write(*,*)
  write(*,*) 'Berechnete Groessen:'
  write(*,*) '     Volumen = ', volumen(koerper2)
  write(*,*) '     Masse   = ', masse(koerper2)
  write(*,*)
   
end program gewichtsberechnung

