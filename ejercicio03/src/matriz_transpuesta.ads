package Matriz_Transpuesta is
   type Matrix is array(Integer range <>, Integer range <>) of Integer;

   procedure Transponer(M : in out Matrix);
end Matriz_Transpuesta;
