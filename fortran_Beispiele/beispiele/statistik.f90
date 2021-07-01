program statistik
!
! Berechnet den Mittelwert und die Standardabweichung
! einer beliebigen Anzahl reeller Daten
! 
   implicit none
   integer :: n = 0       ! Anzahl der Daten
   real :: x              ! ein Datenwert            
   real :: x_mittel       ! der Mittelwert der eingelesenen Daten
   real :: std_dev = 0.0  ! die Standardabweichung
   real :: sum_x   = 0.0  ! die Summe der eingegebenen Datenwerte
   real :: sum_x_2 = 0.0  ! die Summe der quadrierten Datenwerte
  
   write(*,*) 'Berechnung des Mittelwertes und der Standardabweichung'
   write(*,*) 'nichtnegativer reeller Datenwerte'
   write(*,'(A//)') 'Abbruch nach Eingabe einer negativen Zahl'

   do
      write(*,'(A$)') 'Datenwert eingeben:  '
      read(*,*) x
      if ( x < 0 ) exit   ! nach Eingabe negativen einer Zahl wird das Programm
                          ! nach end do fortgesetzt
      n       = n + 1
      sum_x   = sum_x + x
      sum_x_2 = sum_x_2 + x**2   
   end do

   if ( n < 2 ) then 
      write(*,*) 'Es muessen mindestens 2 Datenwerte eingegeben werden!'
      else 
      x_mittel = sum_x / real(n)
      std_dev  = sqrt( (real(n) * sum_x_2 - sum_x**2) / (real(n)*real(n-1)))
      write(*,*)
      write(*,*) 'Der Mittelwert der Daten betraegt: ', x_mittel
      write(*,*) 'Die Standardabweichung betraegt:   ', std_dev
      write(*,*) 'Anzahl der eingelesenen Datensaetze', n
   end if
   
end program statistik
