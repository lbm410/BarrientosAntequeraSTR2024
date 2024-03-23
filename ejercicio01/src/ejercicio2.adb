package body Ejercicio2 is

   procedure Mostrar_Semaforo_Ejercicio2(Color : Semáforo) is
   begin
      
      Put_Line("Ejercicio 2: ");
      
      case Color is
         when Rojo =>
            Put_Line("El semáforo está en rojo.");
         when Amarillo =>
            Put_Line("El semáforo está en amarillo.");
         when Verde =>
            Put_Line("El semáforo está en verde.");
      end case;
      
      New_Line;
      
   end Mostrar_Semaforo_Ejercicio2;

end Ejercicio2;
