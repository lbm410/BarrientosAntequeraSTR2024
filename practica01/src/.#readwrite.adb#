with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Directories; use Ada.Directories;
with Simulador; use Simulador;

package body readwrite is
    procedure SimulateAndWriteData is
        Input_File : File_Type;
        Output_File : File_Type;
        Alarm_Log : File_Type;
        K, SR1, ST4, ST3 : Float;
        ST2_val, Tt_val, ST1_val, SD1_val : Float;
        SC1_val, SC2_val : Float;
        Last : Ada.Float_Text_IO.Num;
    begin
        Open(Input_File, In_File, "input.txt");

        -- Comprobar si los archivos existen antes de abrirlos
        if Exists("data.txt") then
            Open(Output_File, Append_File, "data.txt");
        else
            Create(Output_File, Out_File, "data.txt");
        end if;

        if Exists("alarm_log.txt") then
            Open(Alarm_Log, Append_File, "alarm_log.txt");
        else
            Create(Alarm_Log, Out_File, "alarm_log.txt");
        end if;

        SC1_val := 15.0;  -- Caudal fijo para SC1
        SC2_val := 450.0; -- Caudal fijo para SC2
        ST2_val := 60.0;  -- Valor inicial para ST2(0)
        ST1_val := 50.0;  -- Valor inicial para ST1(0)

        -- Escribir encabezado en data.txt
        Put_Line(Output_File, "k ST1 ST2 ST3 ST4 SC1 SC2 SR1 SD1");

        while not End_Of_File(Input_File) loop
            -- Leer datos de entrada desde input.txt
            Get(Item => Input_File, Number => K, Last => Last);
            Get(Item => Input_File, Number => SR1, Last => Last);
            Get(Item => Input_File, Number => ST4, Last => Last);
            Get(Item => Input_File, Number => ST3, Last => Last);

            -- Simular
            ST2_val := ST2(K, ST1_val, SR1, SC1_val, ST4);
            Tt_val := Tt(K, ST1_val, ST2_val);
            ST1_val := ST1(K, ST2_val);
            SD1_val := SD1(K, ST2_val, ST3, SC2_val);

            -- Verificar si hay alarma de temperatura
            if Tt_val > 98.0 then
                -- Mostrar mensaje de alarma por pantalla
                Put_Line("¡ALARMA! Temperatura a la salida del campo solar mayor de 98°C en la iteración " & Float'Image(K));
                -- Escribir en el archivo de registro de alarmas
                Put_Line(Alarm_Log, "¡ALARMA! Temperatura a la salida del campo solar mayor de 98°C en la iteración " & Float'Image(K));
            end if;

            -- Escribir resultados en data.txt
            Put_Line(Output_File, Float'Image(K) & " " & Float'Image(ST1_val) & " " & Float'Image(ST2_val) & " " & Float'Image(ST3) & " " & Float'Image(ST4) & " " & Float'Image(SC1_val) & " " & Float'Image(SC2_val) & " " & Float'Image(SR1) & " " & Float'Image(SD1_val));
        end loop;

        -- Cerrar archivos
        Close(Input_File);
        Close(Output_File);
        Close(Alarm_Log);
    end SimulateAndWriteData;
end readwrite;
