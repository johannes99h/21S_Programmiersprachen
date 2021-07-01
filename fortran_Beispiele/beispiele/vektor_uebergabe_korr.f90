program vektor_uebergabe
   integer, parameter    :: nmax = 3
   real, dimension(nmax) :: vektor 
   integer               :: i 
   
   do i = 1, nmax
      vektor(i) = real(i)
   end do 

   call ausgabe(nmax,vektor,nmax)  ! Ausgabe der Komponenten des Vektors  
   call ausgabe(nmax,vektor,2)     ! Ausgabe der beiden ersten Komponenten     
   call ausgabe(nmax,vektor,4)     ! Achtung: Fehler
                                   ! Bereichsueberschreitung: 4 > nmax 
      
end program vektor_uebergabe


subroutine ausgabe(n,v,m)
! Bereichsueberschreitung des Datenfeldes bei der Ausgabe 
! wird vermieden durch eine zusaeztliche Pruefung

   implicit none
   ! Deklaration der formalen Parameter 
   integer, intent(in)               :: n   ! Dimension des Datenfeldes
   real, dimension(n), intent(in)    :: v   ! Name des Datenfeldes
   integer, intent(in)               :: m   ! Anzahl der auszugebenden 
                                            ! Komponenten
   ! Deklaration der lokalen Variablen
   integer ::  m_local, i              

   m_local = m 

   if ( m_local > n ) then   
      write(*,*) '------------------------------------------------------&
                 &-----------------'
      write(*,*) 'Achtung:'
      write(*,*) 'Anzahl der Komponenten im Datenfeld: ', n
      write(*,*) 'gewuenschte Anzahl:                  ', m_local
      write(*,*)
      write(*,*) 'Die automatische Begrenzung der Anzahl der auszugebenden &
                  &Komponenten'
      write(*,*) 'tritt in Kraft'
      write(*,*) '------------------------------------------------------&
                 &-----------------'
      write(*,*)
      m_local = n
   end if

      write(*,*)
      write(*,*) 'Es werden die',m_local, &
                 'ersten Komponenten des Vektors ausgegeben.'
      write(*,*)
      do i = 1, m_local
        write(*,*) v(i) 
      end do
      write(*,*)
return
end subroutine ausgabe
