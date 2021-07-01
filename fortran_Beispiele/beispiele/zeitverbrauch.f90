program zeitverbrauch
   implicit none
   integer, parameter :: n = 2000   ! n fuer n x n - Matrix
   real, dimension (n,n) :: a       ! n x n - Matrix
   integer :: i, j, m               ! Schleifenindizes
   integer :: c1, c2, c3            ! Systemzeitmessung
   integer :: cc1, cc2, cc3         ! Systemzeitmessung
   real    :: time1, time2
   real :: random                   ! Datentyp-Deklaration fuer die
                                    ! Fortran-Funktion zur Erzeugung
                                    ! von (Pseudo-Zufallszahlen)
   
100 format(1X,A,I4.4,A,I4.4,A,F7.5) ! Formatbeschreiber zur
                                    ! Ausgabe der Matrixkomponenten
                                    ! I4.4 anpassen an max. Index    
                                    ! I4.4 fuer 1000 <= n <= 9999
   write(*,*) 'Anzahl der Zyklen: ', n
   write(*,*)                                 
   
   ! Initialisierung des Pseudozufallsgenerators
   call random_seed()  
   
   call system_clock(c1,c2,c3)      ! Fortran 90/95-Routine
   write(*,*) 'system_clock: ', c1, c2, c3
   call cpu_time(time1)             ! Fortran 95-Routine
   write(*,*) 'cpu_time = ', time1  
  
! a) zeilenorientierte Vorgehensweise
! 
! 
   write(*,*) '===> zeilenorientiertes Vorgehen'
   do i = 1, n
     do j = 1, n
       a(i,j) = random()   ! Zufallszahl zw. 0 und 1
     end do
   end do
   
 do m = 1, n      ! Multiplikationsprozess wird n mal wiederholt
   do i = 1, n
     do j = 1, n
       a(i,j) = a(i,j)*a(i,j)
     end do
   end do
 end do

   

! b) spaltenorientierte Vorgehensweise
! gemaess der internen Speicherreihenfolge (spaltenorientiert)

! write(*,*) '===> spaltenorientiertes, speicherkonformes Vorgehen'
!    do j = 1, n
!      do i = 1, n
!        a(i,j) = random()
!      end do
!    end do
! 
!    do m = 1, n
!    do j = 1, n
!      do i = 1, n
!        a(i,j) = a(i,j)*a(i,j)
!      end do
!    end do
!    end do
!    

  

! Bildschirmausgabe (bei Bedarf einkommentieren)
!    
!    do i = 1, n
!      do j = 1, n
!        write(*,100) 'a(',i,',',j,') = ', a(i,j)
!      end do
!    end do

call system_clock(cc1,cc2,cc3)
write(*,*) 'system_clock: ', cc1, cc2, cc3 
call cpu_time(time2)
write(*,*) 'cpu_time = ', time2 
write(*,*)
write(*,*) 'Zeitverbrauch:'
write(*,*) 'nach system_clock : ', cc1 - c1
write(*,*) 'nach cpu_time     : ', time2 - time1 
      
end program zeitverbrauch
!---------------------------------------------------------
!!! Auswertung:
!---------------------------------------------------------
!! Bestimmung der Zeitdifferenz 
!! Bildschirmausgabe mit Laptop Intel Pentium PM 2.0 GHz, 1024 MB 
 
!! Bildschirmausgabe, falls der nur der zeilenorientierte Teil
!! a) verwendet wurde
  
!  system_clock:    162412491        1000  2147483647
!  cpu_time =      31142.3
!  system_clock:    162594232        1000  2147483647
!  cpu_time =      31323.9  

!! Bildschirmausgabe, falls nur der spaltenorientierte Teil
!! b) verwendet wurde

! system_clock:    162097037        1000  2147483647
! cpu_time =      30826.8
! system_clock:    162188659        1000  2147483647
! cpu_time =      30918.3

!! Aus dem ersten system_clock-Werten lassen sich der Zeitbedarf fuer
!! der Anweisungsteil mit den Matrixdurchlauefen berechnen

!!  tz = Laufzeit(system_clock,zeilenweise) : 181741
!!  ts = Laufzeit(system_clock,spaltenweise) : 91622

!! Zeitersparnis bei speichergerechten Durchlauf durch Matrix:
!! nach system_clock:

!!        tz / ts = 1.98, d.h. bei dem unguenstigen Durchlauf der
!!                       Matrixkomponenten braucht man
!!                       im Beispiel unnoetigerweise fast
!!                       das Doppelte an Rechenzeit

!! Die analoge Berechnung laesst sich mit den cpu_time-Werten durchfuehren
!! und fuehrt zum gleichen Zahlenverhaeltnis
 
!!  t_z = Laufzeit(cpu_time,zeilenweise): 181.6
!!  t_s = Laufzeit(cpu_time,spalten): 91.5
!!        t_z / t_s = 1.98 

!! Fazit: je nach Struktur des Programms kann man, falls haeufige 
!! Durchlaeufe in mehrdimensionalen grossen Datenfeldern 
!! notwendig werden, durch eine speicherangepasste Gestaltung 
!! des Programms erheblich Rechenzeit einsparen. 

