! Beispiel zur dynamische Deklaration von Datenfeldern 

program dynamische_deklaration
   implicit none
   real, allocatable, dimension (:,: ) :: df   ! dynamisches 2-dim.
Datenfeld
   integer                            :: n, m ! die spaeter
festzulegende
                                              ! Zeilen und Spaltenanzahl
   integer                            :: alloc_status, dealloc_status  
                                              ! Variablen zur
                                              ! Fehlerbehandlung
   integer                            :: i,j  ! Schleifenvariablen

   
   ! Information des Anwenders, Einlesen von n, m

   write(*,*)  'Demo-Programm zur dynamischen Speicherallokierung'
   write(*,*)  'Betrachtet wird eine Matrix (2-dim. Datenfeld)'
   write(*,*) 
   write(*,*)  'Bitte geben Sie die gewuenschten Werte ein'
   write(*,10) 'Anzahl an Zeilen:  '; read(*,*) n  
   write(*,10) 'Anzahl an Spalten: '; read(*,*) m  
   write(*,*)
10 format(1X,A$)

   ! Es muss nun der benoetigte Speicherplatz fuer das Datenfeld 
   ! allokiert werden

   allocate(df(n,m),stat=alloc_status)
   write(*,*)
   write(*,*) 'Rueckgabewert von allocate:', alloc_status
   write(*,*)

   ! Die Matrixkomponenten werden mit einem numerischen Wert 
   ! der dem Zeilenindex als Vorkommastelle und dem 
   ! Spaltenindex als Nachkommastelle belegt 

   do j = 1, m
      do i = 1, n
         df(i,j) = real(i) + 0.1*real(j)
      end do
   end do

   ! Bildschirmausgabe zur Kontrolle

   write(*,*) 'Die Matrix sieht nun so aus:'
   write(*,*)
    do i = 1, n
     write(*,*) (df(i,j), j=1,m)
   end do 

   ! Falls das Datenfeld nicht mehr benoetigt wird, kann der
   ! Speicherplatz
   ! nun deallokiert werden

   deallocate(df,stat=dealloc_status)
   write(*,*)
   write(*,*) 'Rueckgabewert von deallocate:', dealloc_status
   write(*,*)
                                               
end program dynamische_deklaration
