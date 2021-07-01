       PROGRAM V02F77
C
C Das v02_1.f90 Programm in FORTRAN 77
C
C einfaches Beispiel zur Ein- und Ausgabe
C
C Anweisung, um die implizite Datentypdeklaration auszuschalten
       IMPLICIT NONE
C
C Variablen fuer 3 ganze Zahlen
       INTEGER I, J, K
C
C Text ausgeben (Befehle duerfen nur bis einschliesslich Spalte 72 gehen
C                deshalb muss die Zeichenkette umgebrochen werden
C ein * in Spalte 6 markiert in FORTRAN 77 die Fortsetzung der    
C darueber liegenden Zeile 
C
       WRITE(*,*) 'Berechnung des Produkts zweier ganzer Zahlen'
       WRITE(*,*)
       WRITE(*,*) 'Bitte geben Sie zwei ganze Zahlen' 
       WRITE(*,*) '(bitte mindestens durch ein Leerzeichen getrennt)'//
     *            ' ein:'
C
C Die eingegebenen Zahlen werden eingelesen und den Variablen i und j 
C zugewiesen
C 
       READ(*,*) I, J
C
C Der Variablen K wird das Produkt aus den Werten I und J zugewiesen
C
       K = I * J
C
C Der Wert, den K jetzt angenommen hat, wird ausgegeben
C
       WRITE(*,*) 'Das Produkt der beiden Zahlen ist: ', K
C
C Befehl zur Kennzeichnung des Programmendes
C
       END
