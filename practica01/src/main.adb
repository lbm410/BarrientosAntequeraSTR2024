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

   Put_Line(output,("k" & ASCII.HT & "ST1" & ASCII.HT & "ST2" & ASCII.HT
            & "ST3" & ASCII.HT & "ST4" & ASCII.HT & "SC1" & ASCII.HT & "SC2" & ASCII.HT & "SR1" & ASCII.HT & "SD1"));

   -- Resultados
   Put_Line("Resultados del Ejercicio 1:");

   New_Line;

   Put_Line(output,("k" & ASCII.HT & ASCII.HT & "ST1" & ASCII.HT & ASCII.HT & "ST2" & ASCII.HT & ASCII.HT & "ST3" & ASCII.HT & ASCII.HT & "ST4" & ASCII.HT & ASCII.HT & "SC1" & ASCII.HT & ASCII.HT & "SC2" & ASCII.HT & ASCII.HT & "SR1" & ASCII.HT & ASCII.HT & "SD1"));

   -- Leemos el archivo y procesamos la salida
   while not End_Of_File(input) loop

      -- Guardamos valores
      Get(input, k);
      Get(input, SR1(i));
      Get(input, ST4(i));
      Get(input, ST3(i));

      -- Ponemos en marcha las fórmulas
      Tt(i) := Tt_f(ST1(i-1), ST2(i-1));
      ST2(i) := ST2_f(SR1(i), ST4(i), ST1(i-1), SC1(0), Tt(i));
      ST1(i) := ST1_f(ST2(i));
      SD1(i) := SD1_f(SC2(0), ST2(i-1), ST3(i));

      -- Seguridad en ST2
      if (St2(i) > 93.0) then
         Put_Line("Cuidado!");
      end if;

      -- Líneas añadidas al fichero de texto
end Main;
