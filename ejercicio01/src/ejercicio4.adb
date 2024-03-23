package body Ejercicio4 is

   procedure Operaciones_Ejercicio4 is
   begin
      
      Put_Line("Ejercicio 4: ");
      
      Put_Line("Variable A:");
      for I in A_Variable'Range loop
         Put(A_Variable(I)'Image & " ");
      end loop;
      New_Line;

      Put_Line("Variable B:");
      for I in B_Variable'Range(1) loop
         for J in B_Variable'Range(2) loop
            for K in B_Variable'Range(3) loop
               Put(B_Variable(I, J, K)'Image & " ");
            end loop;
            New_Line;
         end loop;
         New_Line;
      end loop;

      Put_Line("Variable C:");
      for I in C_Variable'Range loop
         Put(C_Variable(I)'Image & " ");
      end loop;
      
      New_Line;
   
   end Operaciones_Ejercicio4;

end Ejercicio4;
