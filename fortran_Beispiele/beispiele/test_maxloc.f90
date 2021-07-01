program test_maxloc
   implicit none
   real, dimension(3,4)  :: matrix
   integer               :: i, j
   integer, dimension(2) :: indices_groesster_Wert

! Die Matrixkomponenten werden mit einem numerischen Wert 
! der dem Zeilenindex als Vorkommastelle und dem 
! Spaltenindex als Nachkommastelle belegt 

   do j = 1, 4
      do i = 1, 3
         matrix(i,j) = real(i) + 0.1*real(j)
      end do
   end do
  
   matrix(2,3) = 10.0
   
! Bildschirmausgabe

  write(*,*) 'Die Matrix matrix sieht nun so aus:'
  write(*,*)
  do i = 1, 3
     write(*,*) (matrix(i,j), j=1,4)
  end do 
   
! maxloc Anwendung und ausgeben
  write(*,*)
  write(*,*) 'Rueckgabewerte von maxloc(matrix) sind die Indices, an denen'
  write(*,*) 'die groesste Komponente sitzt:'
  write(*,*)
  write(*,*) maxloc(matrix)

! um mit den Rueckgabewerten von maxloc(matrix) weiterarbeiten zu 
! koennen, braucht man ein Datenfeld, dessen Anzahl der Komponenten
! der Dimension von matrix entspricht 

  indices_groesster_Wert = maxloc(matrix)
  write(*,*)
  write(*,*) 'Zeilenindex der groessten Komponente von matrix:  ', & 
             indices_groesster_Wert(1)
  write(*,*) 'Spaltenindex der groessten Komponente von matrix: ', & 
             indices_groesster_Wert(2)


end program test_maxloc
