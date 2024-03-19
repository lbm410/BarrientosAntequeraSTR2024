with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

      -- Variables que empleamos posteriormente para el contador
   i : Integer;
   k : Float;

   -- Ficheros de texto
   input : File_Type;
   output : File_Type;

   -- Temperaturas Óptimas
   ST2_Opt : Float := 82.0;
   SD1_Opt : Float := 26.5;

   type Vector is Array(Integer range<>) of Float;
   ST3, ST4, SR1, Tt : Vector(1..15);
   ST1, ST2, SC1, SC2 : Vector(0..15);

begin

   -- Valores Fijos Ejercicio 1
   SC1(0) := 15.0;
   SC2(0) := 450.0;

   -- Estados iniciales de ST1 y ST2
   ST1(0) := 50.0;
   ST2(0) := 60.0;

   -- Lectura
   Open(input, In_File, "input.txt");

   -- Creamos el archivo de salida
   Create(output, Out_File, "output.txt");

   Put_Line(output,("k" & ASCII.HT & ASCII.HT & "ST1" & ASCII.HT & ASCII.HT & "ST2" & ASCII.HT & ASCII.HT & "ST3" & ASCII.HT & ASCII.HT & "ST4" & ASCII.HT & ASCII.HT & "SC1" & ASCII.HT & ASCII.HT & "SC2" & ASCII.HT & ASCII.HT & "SR1" & ASCII.HT & ASCII.HT & "SD1"));
end Main;
