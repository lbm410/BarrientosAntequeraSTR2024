with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Simulador; use Simulador;

package body ProcesamientoDatos is
   
   procedure Procesamiento_Datos is

    i : Integer;
    k : Float;

    input : File_Type;
    output : File_Type;
    alarm_log : File_Type;

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

   -- Creacion del archivo de salida
   Create(output, Out_File, "output.txt");

   -- Apertura del archivo de registro de alarmas
   Create(alarm_log, Out_File, "alarm_log.txt");

   -- Encabezado para el archivo de salida
   Put(output, "k"); Put(output, ASCII.HT);
   Put(output, "ST1"); Put(output, ASCII.HT);
   Put(output, "ST2"); Put(output, ASCII.HT);
   Put(output, "ST3"); Put(output, ASCII.HT);
   Put(output, "ST4"); Put(output, ASCII.HT);
   Put(output, "SC1"); Put(output, ASCII.HT);
   Put(output, "SC2"); Put(output, ASCII.HT);
   Put(output, "SR1"); Put(output, ASCII.HT);
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
      if ST2(i) > 98.0 then
         Put_Line("�Cuidado! ST2 tiene una temperatura de: " & Float'Image(ST2(i)) & "�C");
         Put_Line("Mensaje de alarma registrado en el archivo alarm_log.txt.");
         Put(alarm_log, "Iteraci�n: "); Put(alarm_log, Integer'Image(i)); Put(alarm_log, ", Temperatura: "); Put(alarm_log, Float'Image(ST2(i))); Put(alarm_log, "�C");
         New_Line(alarm_log);
      end if;

      Put(output, Integer'Image(i)); Put(output, ASCII.HT);
      Put(output, Float'Image(ST1(i))); Put(output, ASCII.HT);
      Put(output, Float'Image(ST2(i))); Put(output, ASCII.HT);
      Put(output, Float'Image(ST3(i))); Put(output, ASCII.HT);
      Put(output, Float'Image(ST4(i))); Put(output, ASCII.HT);
      Put(output, Float'Image(SC1(0))); Put(output, ASCII.HT);
      Put(output, Float'Image(SC2(0))); Put(output, ASCII.HT);
      Put(output, Float'Image(SR1(i))); Put(output, ASCII.HT);
      Put(output, Float'Image(SD1(i))); New_Line(output);

      Put(Integer'Image(i)); Put(ASCII.HT);
      Put(Float'Image(ST1(i))); Put(ASCII.HT);
      Put(Float'Image(ST2(i))); Put(ASCII.HT);
      Put(Float'Image(ST3(i))); Put(ASCII.HT);
      Put(Float'Image(ST4(i))); Put(ASCII.HT);
      Put(Float'Image(SC1(0))); Put(ASCII.HT);
      Put(Float'Image(SC2(0))); Put(ASCII.HT);
      Put(Float'Image(SR1(i))); Put(ASCII.HT);
      Put(Float'Image(SD1(i))); New_Line;

      i := i + 1;
   end loop;

   -- Cierre de archivos
   Close(input);
   Close(output);
   Close(alarm_log); -- Cerrar el archivo de registro de alarmas
   
   end Procesamiento_Datos;

end ProcesamientoDatos;
