with Ada.Text_IO; use Ada.Text_IO;
with Ejercicio1;

package body Ejercicio1 is

   procedure Procesar_Cadena is
      Cadena : constant String := "ABCDEFG";
   begin
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
      
      New_Line;
      
   end Procesar_Cadena;

end Ejercicio1;
