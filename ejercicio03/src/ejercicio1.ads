package Ejercicio1 is
   type Matrix is array(Integer range <>, Integer range <>) of Integer;

   procedure Leer_Matriz(FileName : String; M2 : out Matrix);
   procedure Escribir_Matriz(FileName : String; M2 : Matrix);
end Ejercicio1;
