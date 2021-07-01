program matrixoperationen2
   implicit none

   real, dimension(3,3)    :: m1, m2 = 0.0 , &
                              m3 = reshape((/ ((1.0/(i+j-1.0),i=1,3),j=1,3) /),(/3,3/))
   logical, dimension(3,3) :: mask = .false.
   real, dimension (3)     :: v1 = (/1.0, 2.0,-1.0/), v2 = (/1.0, 0.0, -1.0/)
   integer :: i, j
   
   10 format(3(1X,F4.1))  ! 3 Werte in einer Zeile
   20 format(3(1X,F4.1/)) ! 3-komponentiger Vektor als Spaltenvektor
   
   
   do j = 1, 3
    do i = 1, 3
       m1(i,j) = real(i) + 0.1 * real(j) 
    end do
   end do
   
   write(*,*) 'm1:'
   write(*,10) (m1(i,1:3),i=1,3)
   write(*,*) 'm2:'
   write(*,10) (m2(i,1:3),i=1,3)
   write(*,*) 'm3:'
   write(*,10) (m3(i,1:3),i=1,3)
   
   write(*,*) 'm2 = transpose(m1):'
   m2 = transpose(m1)
   write(*,10) (m2(i,1:3),i=1,3)
   
   write(*,*) 'Die 3. Zeile von m2 mit -1.0 multiplizieren'
   m2(3,:) = -1.0*m2(3,:)
   write(*,*)
   write(*,*) 'm2:'
   write(*,10) (m2(i,1:3),i=1,3)
   
   write(*,*) 'Groesster Wert von m2:'
   write(*,*) maxval(m2)
   write(*,*) 'bei Index: ', maxloc(m2)
   write(*,*) 'Groesster Wert von m2 entlang der Hauptdiagonalen:'
   ! Die Werte von mask entlang der Hauptdiagonalen werden auf .true.
   ! gesetzt
   do i = 1, 3
     mask(i,i) = .true.
   end do
   write(*,*) maxval(m2,mask)
   write(*,*) 'bei Index: ', maxloc(m2,mask)   

   write(*,*)
   write(*,*) 'm2:'
   write(*,10) (m2(i,1:3),i=1,3)
   
   write(*,*) 'Spaltenmaxima von m2:'
   write(*,10) maxval(m2,1)
   
   write(*,*) 'Zeilenmaxima von m2:'
   write(*,20) maxval(m2,2)
   
   write(*,*) 'm3 = cshift(m2,2,1)'
   m3 = cshift(m2,2,1)
   write(*,10) (m3(i,1:3),i=1,3)
   
   write(*,*)
   write(*,*) 'Vektoren:'
   write(*,*) 'v1 als Zeilenvektor:'
   write(*,10) v1
   write(*,*) 'v2 als Spaltenvektor:'
   write(*,20) v2
   write(*,*) 'Skalarprodukt v1.v2:'
   write(*,*) dot_product(v1,v2)
   
   write(*,*) 'Betrag des Vektors v1 (Euklidsche Norm):'
   write(*,*) sqrt(dot_product(v1,v1))
   
   
   

   
   
   
   

   
   
   
end program matrixoperationen2
