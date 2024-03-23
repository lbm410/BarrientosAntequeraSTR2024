with Ada.Text_IO; use Ada.Text_IO;
with Ejercicio1;
with Matriz_Transpuesta;

procedure Main is

   M2 : Ejercicio1.Matrix(1 .. 5, 1 .. 10);
   M : Matriz_Transpuesta.Matrix(1 .. 5, 1 .. 10);

   output : File_Type;

begin

   Create(output, Out_File, "output.txt");

   Ejercicio1.Leer_Matriz("input.txt", M2);
   Matriz_Transpuesta.Transponer(M);
   Ejercicio1.Escribir_Matriz("output.txt", M2);

   Close(output);

end Main;
