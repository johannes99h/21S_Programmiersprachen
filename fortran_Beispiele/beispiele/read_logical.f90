program read_logical
   implicit none
   logical :: l
   integer :: status
   
   endlosschleife: do             !Endlosschleife

      write(*,*) 'Einlesen eines logischen Werts (listengesteuert)'
      write(*,'(1X,A$)') 'Bitte geben Sie einen logischen Wert ein: '
      read(*,*) l
      write(*,*) 'eingelesen wurde :                       ', l
      write(*,*)

      write(*,*) 'Einlesen eines logischen Werts ''(L)'''
      do
      write(*,'(1X,A$)') 'Bitte geben Sie einen logischen Wert ein: '
        read(*,'(L7)',iostat=status) l
        if (status /= 0) then
           write(*,*) 'Bitte geben Sie T fuer wahr und F fuer falsch oder .true. bzw. .false. ein!'
           cycle
        end if  
        write(*,'(1X,A,17X,L1)') 'eingelesen wurde : ', l
        write(*,*)
        exit
      end do 
   end do endlosschleife 

end program read_logical
