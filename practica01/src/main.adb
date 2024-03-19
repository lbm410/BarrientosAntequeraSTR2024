with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Simulador; use Simulador;

procedure Main is
   -- Variables utilizadas para el contador
   i : Integer;
   k : Float;

   -- Archivos de texto
   input : File_Type;
   output : File_Type;

   -- Temperaturas Óptimas
   ST2_Opt : Float := 82.0;
   SD1_Opt : Float := 26.5;

   type Vector is Array(Integer range<>) of Float;
   ST3, ST4, SR1, SD1, Tt : Vector(1..15);
   ST1, ST2, SC1, SC2 : Vector(0..15);

begin
   -- Valores Fijos Ejercicio 1
   SC1(0) := 15.0;
   SC2(0) := 450.0;

   -- Estados iniciales de ST1 y ST2
   ST1(0) := 50.0;
   ST2(0) := 60.0;

   -- Lectura del archivo de entrada
   Open(input, In_File, "input.txt");

   -- Creación del archivo de salida
   Create(output, Out_File, "output.txt");

   -- Encabezado para el archivo de salida
   Put(output, "k"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "ST1"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "ST2"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "ST3"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "ST4"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "SC1"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "SC2"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "SR1"); Put(output, ASCII.HT); Put(output, ASCII.HT);
   Put(output, "SD1"); New_Line(output);

   -- Resultados
   Put_Line("Resultados del Ejercicio 1:");
   New_Line;

   -- Encabezado para la salida en consola
   Put("k"); Put(ASCII.HT);
   Put("ST1"); Put(ASCII.HT);
   Put("ST2"); Put(ASCII.HT);
   Put("ST3"); Put(ASCII.HT);
   Put("ST4"); Put(ASCII.HT);
   Put("SC1"); Put(ASCII.HT);
   Put("SC2"); Put(ASCII.HT);
   Put("SR1"); Put(ASCII.HT);
   Put("SD1"); New_Line;

   -- Procesamiento del archivo de entrada y escritura de resultados
   i := 1;
   while not End_Of_File(input) loop
      Get(input, k);
      Get(input, SR1(i));
      Get(input, ST4(i));
      Get(input, ST3(i));

      Tt(i) := Tt_f(ST1(i-1), ST2(i-1));
      ST2(i) := ST2_f(SR1(i), ST4(i), ST1(i-1), SC1(0), Tt(i));
      ST1(i) := ST1_f(ST2(i));
      SD1(i) := SD1_f(SC2(0), ST2(i-1), ST3(i));

      -- Advertencia de seguridad
      if ST2(i) > 93.0 then
         Put_Line("Cuidado! ST2 tiene una temperatura de: " & ST2(i)'Img & "ºC");
      end if;

      Put(output, k); Put(output, ASCII.HT);
      Put(output, ST1(i)); Put(output, ASCII.HT);
      Put(output, ST2(i)); Put(output, ASCII.HT);
      Put(output, ST3(i)); Put(output, ASCII.HT);
      Put(output, ST4(i)); Put(output, ASCII.HT);
      Put(output, SC1(0)); Put(output, ASCII.HT);
      Put(output, SC2(0)); Put(output, ASCII.HT);
      Put(output, SR1(i)); Put(output, ASCII.HT);
      Put(output, SD1(i)); New_Line(output);

      Put(Integer(k)'Img); Put(ASCII.HT);
      Put(ST1(i)); Put(ASCII.HT);
      Put(ST2(i)); Put(ASCII.HT);
      Put(ST3(i)); Put(ASCII.HT);
      Put(ST4(i)); Put(ASCII.HT);
      Put(SC1(0)); Put(ASCII.HT);
      Put(SC2(0)); Put(ASCII.HT);
      Put(SR1(i)); Put(ASCII.HT);
      Put(SD1(i)); New_Line;

      i := i + 1;
   end loop;

   -- Cierre de archivos
   Close(input);
   Close(output);
end Main;
