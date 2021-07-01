program eingabefehler
   implicit none
   real    :: x
   
   write(*,'(A$)') 'Geben Sie eine reelle Zahl ein: '
   read(*,*) x
   write(*,*) 'Eingelesen wurde : ', x

end program eingabefehler