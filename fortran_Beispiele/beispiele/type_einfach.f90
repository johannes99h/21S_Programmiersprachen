module datenbankdefinition
   implicit none
   save
   integer, parameter           :: n = 3  ! Anzahl Datensaetze
   character(len=35), parameter :: str = '(2X,I2,3X,A25,1X,A25,1X,A6/)'
                                          ! fuer formatierte Ausgabe von student
   type :: student
     character(len=25) :: vorname, nachname
     character(len=6)  :: matrikel_nr
   end type student

   type(student), dimension(n)   :: personen
end module datenbankdefinition



program type_einfach
   use datenbankdefinition
   implicit none

   character(len=6)    :: nummer
   integer             :: i

!---------------------
!  Formatbeschreiber
!---------------------

15 format(1X,A$)     ! Ausgabeformat: Zeichenkonstante mit Unterdrueckung
                     ! des Zeilenvorschubs
20 format(A6)        ! Einleseformat Matrikelnummer
25 format(A25)       ! Einleseformat Matrikelnummer

!-------------------------------------------------------------
! Wertzuweisung fuer den zusammengesetzten Datentyp
!-------------------------------------------------------------

   personen(1) =  student('Hans','Maier','123456')
   personen(2) =  student('Irene','Huber','111111')
   personen(3) =  student('Maria', 'Rose','000001')

   call datenbank_ausgabe

!-------------------------------------------------------------
! Den Nachnamen einer Person aendern
!-------------------------------------------------------------

   write(*,*)
   write(*,*) '====================================='
   write(*,*)      'Funktion: Nachname aendern:'
   write(*,*) '====================================='
   write(*,15) 'Bitte geben Sie die Matikelnummer ein: '
   read(*,20) nummer

   do i = 1, n
      if (nummer == personen(i)%matrikel_nr) then
          write(*,*)
          write(*,str) i, personen(i)%vorname, personen(i)%nachname, &
                personen(i)%matrikel_nr
          write(*,15) '      >>>  neuer Nachname  =>   ';
          read(*,25)   personen(i)%nachname
       end if
   end do
   call datenbank_ausgabe
end program type_einfach


subroutine datenbank_ausgabe
   use datenbankdefinition
   implicit none
   integer :: i
   write(*,*)
   write(*,*) '====================================='
   write(*,*) 'Funktion: Ausgabe der Datenbank:'
   write(*,*) '====================================='
         do i = 1, n
               write(*,str) i, personen(i)%vorname, personen(i)%nachname, &
               personen(i)%matrikel_nr
         end do
   return
end subroutine datenbank_ausgabe


