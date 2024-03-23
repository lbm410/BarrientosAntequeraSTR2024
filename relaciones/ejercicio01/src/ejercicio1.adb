package body Ejercicio1 is

   procedure Operaciones_Ejercicio1 is
      Resultado_AB : Integer;
      Resultado_AC : Integer;
      Resultado_BC : Integer;
   begin
      Resultado_AB := A + B;
      Resultado_AC := A + C;
      Resultado_BC := B + C;

      Put_Line("Ejercicio 1:");
      Put_Line("Resultado de A + B: " & Integer'Image(Resultado_AB));
      Put_Line("Resultado de A + C: " & Integer'Image(Resultado_AC));
      Put_Line("Resultado de B + C: " & Integer'Image(Resultado_BC));
      
      New_Line;
      
   end Operaciones_Ejercicio1;

end Ejercicio1;
