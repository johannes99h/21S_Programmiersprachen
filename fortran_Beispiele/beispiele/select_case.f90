program select_case
   implicit none
   integer :: temp_wert
  
   write(*,*) 'Geben Sie den abgelesenen Temperaturwert ein!'
   read(*,*) temp_wert
   
   temp_aussage: select case (temp_wert)
                             ! der case-selector temp_wert muss von Datentyp
                             ! integer, character oder logical sein
   case (:-1)
            write(*,*) 'unter 0 Grad Celsius'
   case (0)
            write(*,*) 'Genau 0 Grad Celsius'
   case (1:20)
            write(*,*) 'Noch ziemlich kuehl heute'
   case (21:30)
            write(*,*) 'Es scheint heute warm zu sein'
   case (31:36)
            write(*,*) 'Es ist reichlich heiss draussen'
   case default 
            write(*,*) 'Legen Sie Ihr Thermometer besser in den Schatten!'
   end select temp_aussage

end program select_case
