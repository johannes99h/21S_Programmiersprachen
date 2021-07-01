program vektor
  implicit none
  integer, parameter :: n = 9    ! bei Bedarf anpassen
  real, dimension(n) :: v        ! Vektor v
  integer :: i 

  ! Teile des Formatbeschreibers, keine haendische Anpassung notwendig
  character (len=20) :: fb2 = '(2X,F5.3))' 
  character          :: fb1
  character (len=40) :: fb
  
  if (n <= 0 .or. n > 9) stop "n kann nur Werte von 1 bis 9 annehmen"

  ! Zusammensetzung des Formatbeschreibers
  ! funktioniert nur fuer n = 1 .. 9
  fb1 = achar(iachar('0')+n)
  fb  ="("//fb1//fb2
  
  write(*,*) fb

  do i = 1, n
     v(i) = 1.0/real(i)
  end do
  
  ! Bildschirmausgabe des Vektors
  write(*,fb) v


end program vektor
