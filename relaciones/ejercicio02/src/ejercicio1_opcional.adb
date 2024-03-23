with Ada.Text_IO; use Ada.Text_IO;
with Ejercicio1_Opcional;

package body Ejercicio1_Opcional is

procedure Procesar_Cadena_Entrada is
   Cadena : String(1 .. 100); -- Permitimos cadenas de hasta 100 caracteres
   Last   : Natural;
   begin
      
      Put_Line("Parte Opcional: ");
      New_Line;
      
   Put_Line("Ingrese una cadena:");
   Get_Line(Cadena, Last);
      
      for I in Cadena'Range loop
         case Cadena(I) is
            when 'A' | 'B' =>
               Put_Line("Opción 1");
            when 'C' | 'D' | 'E' =>
               Put_Line("Opción 2");
            when 'F' =>
               Put_Line("Opción 3");
            when others =>
               Put_Line("Otra opción");
         end case;
      end loop;
   end Procesar_Cadena_Entrada;

end Ejercicio1_Opcional;
