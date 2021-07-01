program vektor_uebergabe
   integer, parameter    :: nmax = 3
   real, dimension(nmax) :: vektor 
   integer               :: i 
   
   do i = 1, nmax
      vektor(i) = real(i)
   end do 

   call ausgabe(nmax,vektor)  ! Ausgabe der Komponenten des Vektors  
   call ausgabe(2,vektor)     ! Ausgabe der beiden ersten Komponenten     
   call ausgabe(4,vektor)     ! Achtung: Fehler
                              ! Bereichsueberschreitung: 4 > nmax 
      
end program vektor_uebergabe


subroutine ausgabe(n,v)

! Achtung: Subroutine noch unzulaenglich programmiert
! Bereichsueberschreitung des Datenfeldes bei der Ausgabe moeglich

   implicit none
   ! Deklaration der formalen Parameter 
   integer, intent(in)               :: n 
   real, dimension(n), intent(in)    :: v
   ! Deklaration der lokalen Variablen
   integer :: i 

   write(*,*)
   write(*,*) 'Es werden die',n,'ersten Komponenten des Vektors ausgegeben.'
   write(*,*)
   do i = 1, n
      write(*,*) v(i) 
   end do
   write(*,*) 
return
end subroutine ausgabe
