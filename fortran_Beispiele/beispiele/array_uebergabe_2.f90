program array_uebergabe
   implicit none
   integer, parameter :: nmax=9, mmax=9  
   real, dimension(nmax,mmax) :: matrix     ! Zweidimensionales Datenfeld
                                            ! mit nmax Zeilen und mmax Spalten
   integer :: n, m                          ! die vom Anwender gewuenschte
                                            ! Anzahl an Zeilen und Spalten
   integer :: i, j                          ! Schleifenvariablen
   logical :: mache                         ! Hilfsvariable 
   character(len=20) :: formatstring        ! Formatstring zur Ausgabe 
                                            ! der Matrix(zeilen)

    5 format(1X,A$)     ! Format fuer Eingabezeile
   10 format(1X,A,I2,/) ! Formatbeschreiber zur Ausgabe der Zeilen- bzw.     
                        ! Spaltenzahl 
     
   ! Einlesen der Zeilenanzahl n

   mache = .TRUE.
   do while (mache) 
     write(*,5) 'Geben Sie bitte die Anzahl der Zeilen ein (Zeilenanzahl<= 9): '
     read(*,*) n
     write(*,10) '=> eingegeben wurde: ', n
     if ( n > 0 .AND. n <= nmax ) mache = .FALSE.
   end do 

   
   ! Einlesen der Spaltenanzahl m

   mache = .TRUE.  
   do while (mache) 
     write(*,5) 'Geben Sie bitte die Anzahl der Spalten ein&
                & (Spaltenanzahl<= 9): '
     read(*,*) m  
     write(*,10) '=> eingegeben wurde: ', m
     if ( m > 0 .AND. m <= mmax  ) mache = .FALSE.
   end do
           
     
   ! Formatstring fuer die Ausgabe der Matrix 
   ! (wird aus Zeichenketten zusammengesetzt) 
   formatstring = '(1X,'//char(ichar('0')+m)//'(F3.1,1X))' 
   write(*,*) 'Formatstring fuer die Ausgabe der Matrixzeilen: ', &
               formatstring
    
   do j = 1, m
     do i = 1, n
        matrix(i,j) = real(i) + 0.1*real(j)
     end do
   end do

   ! Ausgabe der Matrix 
   write(*,*)
   write(*,*) 'Ausgabe der Matrix: '
   write(*,*)
   do i = 1, n
   write(*,formatstring)  (matrix(i,j), j=1,m)
   end do
   write(*,*)

   ! Aufruf des Unterprogramms zur Modifikation der Matrix
   call matrix_modifikation(matrix,nmax,n,m)
   
   ! Ausgabe der Matrix 
   write(*,*)
   write(*,*) 'Ausgabe der modifizierten Matrix: '
   write(*,*)
   do i = 1, n
   write(*,formatstring)  (matrix(i,j), j=1,m)
   end do
   write(*,*)

end program array_uebergabe


subroutine matrix_modifikation (mat,n_max,n_,m_)
!
! die Komponenten in ungerader Zeilen- bzw. Spaltenanzahl 
! werden durch 0.0 ersetzt
!
   implicit none
   integer, intent(in) :: n_max, n_, m_
   real, dimension(n_max,*), intent(inout) :: mat
! Bemerkung: analog dem alten Fortran-Syntax:
! Datenfelddeklaration in der Subroutine in der letzten 
! Dimensionsangabe mit * wuerde auch funktionieren, nicht
! mehr verwenden, da moegliche Fehlerquelle
   ! Deklaration der lokalen Variablen
   integer :: i, j
   
   do j = 1, m_
     do i = 1, n_
       if ( mod(i,2) == 1 .OR. mod(j,2) == 1) then
       mat(i,j) = 0.0 
       end if 
     end do
 
   end do

   return
end subroutine matrix_modifikation 
