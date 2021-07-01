program real_beispiele
	implicit none
	real :: w, x, y, z

	w = 5.0e-1
 	x = 1.e-9	
	y = 123456789.012

	z = x * y

! Das listengesteuerte Format fuer die Ausgabe [write(*,*)] gibt
! real-Werte immer so aus, dass die Stellen der 
! der real-Zahl gut dargestellt werden, die im Genauigkeitsbereich
! (der intrinsische real-Datentyp ist bei einer internen
! 4-Byte-Darstellung auf ca. 7 Stellen genau) liegen

	write(*,*) 'w = ', w
	write(*,*)            
	write(*,*) 'x = ', x
	write(*,*) 'y = ', y
	write(*,*) 'z = x * y = ', z

end program real_beispiele
