with Ada.Text_IO; use Ada.Text_IO;

package Ejercicio1 is

   subtype Tipo_A is Integer range -120 .. 120;
   subtype Tipo_B is Integer range 0 .. 50;
   subtype Tipo_C is Integer range 0 .. 255;

   A : Tipo_A := 100;
   B : Tipo_B := 25;
   C : Tipo_C := 200;

   procedure Operaciones_Ejercicio1;

end Ejercicio1;
