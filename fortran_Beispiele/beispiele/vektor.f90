program vektor
  implicit none
  integer, parameter :: n = 9    ! bei Bedarf anpassen
  real, dimension(n) :: v        ! Vektor v
  integer :: i 
  character (len=20) :: fb = '(9(2X,F5.3))' ! Bei Bedarf anpassen 
                                            ! vor der 2. runden Klammer
                                            ! muss der Zahlenwert von n stehen
 
  write(*,*) fb

  do i = 1, n
     v(i) = 1.0/real(i)
  end do
  
  ! Bildschirmausgabe des Vektors
  write(*,fb) v


end program vektor
