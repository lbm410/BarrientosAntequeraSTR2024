with Ada.Text_IO; use Ada.Text_IO;

package Ejercicio4 is

   type A_Array is array (1 .. 150) of Float;
   type B_Array is array (1 .. 200, 1 .. 200, 1 .. 200) of Integer;
   type C_Array is array (Positive range <>) of Float;

   A_Variable : A_Array := (others => 0.0);
   B_Variable : B_Array := (others => (others => (others => 0)));
   C_Variable : C_Array := (0.0, 0.0, 0.0, 0.0, 0.0); -- Ejemplo de inicialización con tamaño 5

   procedure Operaciones_Ejercicio4;

end Ejercicio4;
