program neu
   implicit none
   real :: x = 0.0, summe = 0.0
   
    write(*,*) 'Das Programm addiert die von Ihnen eingegebenen Zahlen'
    write(*,*)
    write(*,*) 'Wollen Sie die Summation abschliessen, so geben Sie als Zahl 0 ein'
    write(*,*)
    
schleife: do 
    summe = summe + x
    write(*,'(1X,A$)') 'Geben Sie die Zahl ein: '
    read(*,*) x
    if ( x /= 0.0) cycle schleife
    exit schleife
end do schleife

    write(*,*) 
    write(*,*) 'Die Summe betraegt: ', summe      

end program neu

