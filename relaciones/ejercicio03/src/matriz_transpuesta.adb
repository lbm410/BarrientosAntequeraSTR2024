package body Matriz_Transpuesta is

   procedure Transponer(M : in out Matrix) is
      Temp : Integer;
   begin
      for I in M'Range(1) loop
         for J in M'Range(2) loop
            if J > I then
               Temp := M(I, J);
               M(I, J) := M(J, I);
               M(J, I) := Temp;
            end if;
         end loop;
      end loop;
   end Transponer;

end Matriz_Transpuesta;
