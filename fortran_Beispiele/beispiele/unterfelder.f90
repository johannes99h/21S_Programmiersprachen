program unterfelder 
   implicit none
   integer, dimension(5,5) :: a
   integer                 :: i, j  
   
   integer, dimension(3,4) :: b
   integer, dimension(2,3) :: c
   integer, dimension(5)   :: zeile3, spalte1
 
   10 format(5(1X,I3))  ! Formatbeschreiber 5 Werte in einer Zeile
   20 format(4(1X,I3))  ! Formatbeschreiber 4 Werte in einer Zeile
   30 format(1X,I3)     ! Formatbeschreiber 1 Wert  in einer Zeile
   40 format(3(1X,I3))  ! Formatbeschreiber 3 Werte in einer Zeile

   do j = 1, 5
      do i = 1, 5
        a(i,j) = (i-1)* 5 + (j-1) 
      end do
   end do
   
   write(*,*)
   write(*,*) 'Matrix a :'
 !  write(*,10) ( (a(i,j), j=1,5), i=1,5)  !Fortran 77
   write(*,*) ( a(i,1:5), i=1,5 )          
   write(*,*) 

   b = a(1:3,2:5)  ! Fortran 90/95 - Syntax
   
   write(*,*)
   write(*,*) 'Untermatrix b = a(1..3,2..5) :'
   write(*,20) ( (b(i,j), j=1,4), i=1,3)
   write(*,*) 

   c = a(2:3,3:)  ! Fortran 90/95 - Syntax
   
   write(*,*)
   write(*,*) 'Untermatrix c = a(2:3,3:) :'
   write(*,40) ( (c(i,j), j=1,3), i=1,2)
   write(*,*) 

   zeile3 = a(3,:)   ! Fortran 90/95 -Syntax
   write(*,*)
   write(*,*) 'Zeilenvektor der 3. Zeile :'
   write(*,10) zeile3

   spalte1 = a(:,1)
   write(*,*)
   write(*,*) 'Spaltenvektor der 1. Spalte :'
   write(*,30) spalte1
  
   write(*,*)
   write(*,*) 'Testfunktionen fuer Arrays'
   write(*,*) 'shape(a)   = ', shape(a)
   write(*,*) 'size(a)    = ', size(a)
   write(*,*) 'lbound(a)  = ', lbound(a)
   write(*,*) 'ubound(a)  = ', ubound(a)
   write(*,*)
   write(*,*) 'c deklariert als real,dimension(2,3) :: c. Zugewiesen wurde: c = a(2:3,3:)'
   write(*,*) 'shape(c)   = ', shape(c)
   write(*,*) 'size(c)    = ', size(c)
   write(*,*) 'lbound(c)  = ', lbound(c)
   write(*,*) 'ubound(c)  = ', ubound(c)
   
end program unterfelder 
