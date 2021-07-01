program min_max
   implicit none
   real :: a, b
	
   write(*,*) 'Das Programm berechnet das Miniumum zweier &
                  & reeller Zahlen a und b'
   write(*,'(A$)') 'Bitte geben Sie a und b durch eine &
                    & Leerstelle getrennt ein: ' 
   read(*,*)  a, b
   write(*,*)
   write(*,*) 'Das Minimum beider Zahlen ist: ', min(a,b) 
   write(*,*) 'Das Maximum beider Zahlen ist: ', max(a,b) 
	
end program min_max
