program formate_integer
   implicit none
   integer :: i = 73
 
   write(*,*) 'Umgewandelt wird:'
   write(*,'(I12)') i
   write(*,*)
 
   write(*,*) 'In eine Binaerzahl (Zahlen-Basis 2):'
! Umwandlung in eine Binaerzahl (Basis 2)  
   write(*,'(B12)') i
   
   write(*,*)
   write(*,*) 'In eine Octal (Zahlen-Basis 8):'
! Umwandlung in eine Octalzahl (Basis 8)   
   write(*,'(O12)') i
   
   write(*,*)
   write(*,*) 'In eine Hexadezimalzahl(Zahlen-Basis 16):'
! Umwandlung in eine Hexadezimalzahl (Basis 16)
   write(*,'(Z12)') i

end program formate_integer
