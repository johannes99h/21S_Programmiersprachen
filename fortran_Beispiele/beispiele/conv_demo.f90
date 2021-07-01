program conv_demo
     implicit none
     integer :: ergebnis
     ergebnis = 1.25 + 9 / 4
     write(*,*) 'ergebnis (Datentyp integer) = 1.25 +  9 / 4 = ', ergebnis
     write(*,*) 'Zum Vergleich :               1.25 +  9 / 4 = ', 1.25 + 9 / 4
end program conv_demo
