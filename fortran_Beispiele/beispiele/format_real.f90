! Beispiele Formatbeschreiber REAL 
!
! a)  rFw.d     Fixpunktdarstellung
! b)  rEw.d     wissenschaftliche Darstellung
! c)  rESw.d    "echte" wissenschaftliche Darstellung (Fortran90/95 Erweiterung)
! d)  rENw.d    "Ingenieur-Darstellung" (Fortran90/95 Erweiterung)
! e)  rGw.d     "Gleitpunktzahl" je nachdem F oder E-Format
!                    
! r : Wiederholungsfaktor
! w : Feldgroesse
! d : Nachkommastellen: dabei muss gelten:
!
! a)  w >= d+2
! b)  w >= d+7 falls der Compiler die Null vor
!              dem Punkt schreibt. Falls der Compiler 
!              die Ziffer 0 nicht ausschreibt, reicht w >= d+6 
! c)  w >= d+7 aehnlich b), die Ziffer vor dem Punkt 
!              liegt zwischen -9 und 9
! d)  w >= d+9 aehnlich b) und c), die Zahl vor dem Punkt liegt zwischen  
!              1 und 999 bzw. -1 und -999 und die Exponent zur Basis 10
!              wird stets als ein Vielfaches von 3 bzw. -3 dargestellt         
!              wie es den ueblichen Benennungen als Kilo, Mega, Giga ...
!              bzw. Milli, Mikro, Nano... entspricht
!				  
! e)  w >= d+7 Falls sich die Zahl als Fixpunktzahl (F-Format)
!              darstellen laesst, wird dieses verwendet, wenn nicht, 
!              wird die E - Darstellung eingesetzt)
!
program format_real
   implicit none
   real :: x = 1.234567, y = 2.222222E5, z = -3.3333E-5
   
   write(*,*) 'Listengesteuerte Ausgabe einzeln:'
   write(*,*) x
   write(*,*) y
   write(*,*) z
   write(*,*) 

   write(*,*) 'Formatgesteuerte Ausgabe ''(F13.4)'':'
   100 format(1X,F13.4)
   write(*,100) x
   write(*,100) y
   write(*,100) z
   write(*,*) 
  
   
   write(*,*) 'Formatgesteuerte Ausgabe ''(E13.4)'':'
   200 format(1X,E13.4)
   write(*,200) x
   write(*,200) y
   write(*,200) z
   write(*,*) 

   write(*,*) 'Formatgesteuerte Ausgabe ''(ES13.4)'':'
   300 format(1X,ES13.4)
   write(*,300) x
   write(*,300) y
   write(*,300) z
   write(*,*) 

   write(*,*) 'Formatgesteuerte Ausgabe ''(EN13.4)'':'
   400 format(1X,EN13.4)
   write(*,400) x
   write(*,400) y
   write(*,400) z
   write(*,*) 

   write(*,*) 'Formatgesteuerte Ausgabe ''(G13.4)'':'
   500 format(1X,G13.4)
   write(*,500) x
   write(*,500) y
   write(*,500) z
end program format_real
