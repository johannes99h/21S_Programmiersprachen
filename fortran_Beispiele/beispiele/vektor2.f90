program vektor
  implicit none
  integer, parameter :: n = 55   ! bei Bedarf anpassen, Zahlen zw. 1 und 999999
  real, dimension(n) :: v        ! Vektor v
  integer :: i 

  ! Teile des Formatbeschreibers, keine haendische Anpassung mehr noetig
  character (len=20) :: fb2 = '(2X,F5.3))' 
  character (len=10) :: fb1
  character (len=40) :: fb
  

  if ( n < 1 .or. n > 999999 ) stop "n muss im Bereich zw. 1 und 999999 liegen!"
  ! Zusammensetzung des Formatbeschreibers
  ! funktioniert nur fuer n von 1 .. 999999 wg. I6 (6 Stellen)
  write(fb1,'(I6)') n
  
  fb  ="("//trim(adjustl(fb1))//fb2
  write(*,*) fb

  do i = 1, n
     v(i) = 1.0/real(i)
  end do
  
  ! Bildschirmausgabe des Vektors
    write(*,fb) v


end program vektor
