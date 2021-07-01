! Das Programm ermittelt mit Hilfe der function mittelwert den
! an n aequidistanten Stuetzstellen ermittelten mittleren Funktionswert
! einer Funktion f (vorgeben durch die Funktion f) im Intervall             
! [anfangswert,endwert] 


program external_demo
   implicit none
   real :: mittelwert
   real, external :: f

   write(*,*) 'Der Mittelwert aus den Stuetzstellenwerten betraegt:', &
               mittelwert(f,0.0, 10.0, 3)
               ! f: Unterprogramm als aktueller Parameter beim Aufruf
               ! der Function mittelwert

end program external_demo
