with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package body Ejercicio6 is

   procedure Imprimir_Ejercicio6 is
   begin

      Put_Line("Ejercicio 6: ");

      Put_Line("Nombre: " & To_String(Lucas.Nombre));
      Put_Line("Apellidos: " & To_String(Lucas.Apellidos));
      Put_Line("Fecha de Nacimiento: " & Lucas.Fecha_Nac.Dia'Image & "/" &
                                            Lucas.Fecha_Nac.Mes'Image & "/" &
                                            Lucas.Fecha_Nac.Anio'Image);

      New_Line;

      Put_Line("Nombre: " & To_String(Adrian.Nombre));
      Put_Line("Apellidos: " & To_String(Adrian.Apellidos));
      Put_Line("Fecha de Nacimiento: " & Adrian.Fecha_Nac.Dia'Image & "/" &
                                            Adrian.Fecha_Nac.Mes'Image & "/" &
                                            Adrian.Fecha_Nac.Anio'Image);

   end Imprimir_Ejercicio6;

end Ejercicio6;
