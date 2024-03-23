with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO; 

package body Ejercicio1 is
   
   

   procedure Leer_Matriz(FileName : String; M2 : out Matrix) is
      F : File_Type;
      Rows, Cols : Integer;
   begin
      Open(F, In_File, FileName);
      Get(F, Rows); 
      Get(F, Cols); 
      New_Line(F); 

      for I in 1 .. Rows loop
         for J in 1 .. Cols loop
            Get(F, M2(I, J));
         end loop;
         New_Line(F);
      end loop;

      Close(F);
   end Leer_Matriz;

   procedure Escribir_Matriz(FileName : String; M2 : Matrix) is
      F : File_Type;
      Rows, Cols : Integer;
   begin
      Open(F, Out_File, FileName);
      Rows := M2'Length(1);
      Cols := M2'Length(2);

      Put(F, Rows);
      Put(F, ' ');
      Put(F, Cols);
      New_Line(F);

      for I in 1 .. Rows loop
         for J in 1 .. Cols loop
            Put(F, M2(I, J), Width => 3);
            Put(F, ' ');
         end loop;
         New_Line(F);
      end loop;

      Close(F);
   end Escribir_Matriz;

end Ejercicio1;
