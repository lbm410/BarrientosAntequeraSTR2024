with Ada.Text_IO; use Ada.Text_IO;

package Ejercicio3 is

   type A is delta 0.01 range -50.0 .. 50.0;
   type B is delta 0.001 range -200.0 .. 200.0;

   A_Variable : A := 25.0;
   B_Variable : B := 150.123;

   procedure Operaciones_Ejercicio3;

end Ejercicio3;
