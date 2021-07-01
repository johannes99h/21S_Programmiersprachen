program v02_1
!
! einfaches Beispiel zur Ein- und Ausgabe
!
	implicit none	    ! Schluesselzeile um die implizite 
			    ! Datentypdeklaration auszuschalten
	integer :: i, j, k  ! Variablen fuer 3 ganze Zahlen

! Text auf der Standardausgabe (Bildschirm) ausgeben
        write(*,*) 'Berechnung des Produkts zweier ganzer Zahlen'
        write(*,*)
        write(*,*) 'Bitte geben Sie zwei ganze Zahlen' 
        write(*,*) '(bitte mindestens durch ein Leerzeichen getrennt) ein:'

	read(*,*) i, j      ! Die eingegebenen Zahlen werden eingelesen
                            ! und den Variablen i und j zugewiesen

	k = i * j           ! Der Variablen k wird das Produkt aus 
                            ! den Werten i und j zugewiesen

                            ! Der Wert, den k jetzt angenommen hat, 
                            ! wird ausgegeben

	write(*,*) 'Das Produkt der beiden Zahlen ist',  k        

! Befehl zur Kennzeichnung des Programmendes
end program v02_1
