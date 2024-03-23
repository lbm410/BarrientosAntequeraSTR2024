package body Ejercicio3 is

   procedure Operaciones_Ejercicio3 is
      Resultado : Float;
   begin
      
      Put_Line("Ejercicio 3: ");
      
      Resultado := Float(A_Variable) + Float(B_Variable);
      Put_Line("Resultado de A + B: " & Float'Image(Resultado));
      
      New_Line;
      
   end Operaciones_Ejercicio3;

end Ejercicio3;
