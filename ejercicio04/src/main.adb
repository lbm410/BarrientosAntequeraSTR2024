with Ada.Text_IO, Ada.Integer_Text_IO; use Ada.Text_IO, Ada.Integer_Text_IO;
with Cola; use Cola;

procedure Main is

   E : Elemento;
   N : Integer;

begin

   for i in 1 .. 10 loop
      E := Elemento(i);
      Poner(E);
   end loop;

   Put_Line("Datos de la cola: ");

   while Vacia = false loop
      Quitar(Elemento(N));
      Put(Integer'Image(N));
   end loop;


end Main;
