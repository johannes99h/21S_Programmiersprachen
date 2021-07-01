program einlesen

! Beispiel zum Einlesen von Datensaetzen aus Dateien
! mit Fehlererkennung

implicit none


character(len=20) :: filename     ! Name des Files
integer :: anzahl = 0             ! Anzahl der eingelesenen Werte, 
                                  ! hier gleichzeitig Nummer des Datenstatzes
integer :: status_open            ! Rueckgabewert aus iostat bei open
integer :: status_read            ! Rueckgabewert aus iostat beim 
                                  ! Einlesen der Daten mit read

real :: wert                      ! eingeleser Wert
                                   


! Interaktive Eingabe des Filenamens

write(*,*) ' Bitte geben Sie den Namen der zu lesenden Datei'
write(*,'(A$)') ' (nicht in Anfuehrungszeichen eingeschlossen) an: '
read(*,'(A)') filename
write(*,*) ' Als Name der Datei wurde eingelesen: ', filename
write(*,*)
 

! OEffnen der Datei mit Abfangen von I/O-Fehlern
open(unit=25, file=filename, status='OLD', action='READ', iostat=status_open)

oeffnen: if ( status_open == 0 ) then
         ! Beim OEffnen der Datei sind keine Fehler aufgetreten
	 ! es geht weiter mit dem Einlesen der Werte


          einlese_schleife: do
          read (25,*,iostat=status_read) wert   ! Einlesen des Wertes 
          if ( status_read /= 0 ) exit          ! Programm wird am Ende 
	                                    ! der einlese_schleife fortgesetzt,
					    ! wenn beim Einlesen des Wertes
					    ! ein Fehler auftritt oder das
					    ! Dateiende erreicht wurde 

           anzahl = anzahl + 1              ! Anzahl der eingelesenen Werte 
	                                    ! hier gleich Zeilennummer

           !Bildschirmausgabe
           write(*,*) ' Zeilennummer = ', anzahl, ' Wert =', wert 
           end do einlese_schleife       

           ! hier geht's weiter, wenn status_read /= 0 war, deshalb:
           ! Behandlung der 2 moeglichen Faelle mit status_read <> 0 
           readif: if ( status_read > 0 ) then 
	              write(*,*) 'Beim Lesen von Zeile ', anzahl+1, &
	              ' ist ein Fehler aufgetreten'
				   
                      else ! status_read < 0 
                           ! das Dateiende (end of file = EOF) wurde erreicht 
                           ! der Benutzer wird darueber explizit informiert und
	         	   ! die Gesamtanzahl der Datensaetze 
                           ! wird nochmals ausgegeben

                           write(*,*)
                           write(*,*) ' Hinweis: das Dateiende wurde erreicht'
	                   write(*,*) ' => In der Datei sind insgesamt ', & 
                                      anzahl, ' Werte'
           end if readif



           ! die noch ausstehende Behandlung des Fehlerfalls 
           ! beim OEffnen der Datei
           ! status_open <> 0 wird hier behandelt

           else oeffnen
             write(*,*) 'Beim OEffnen der Datei trat &
                         &  Systemfehler Nr. ', status_open,' auf'

end if oeffnen

close( unit=25 )  !Datei schliessen

end program einlesen

