with Ada.Text_IO, Numeros_Complejos; use Ada.Text_IO, Numeros_Complejos;

procedure Main is

   x, y, Suma, Resta, Mult, Div, Conjugado : Complejo;

begin

   x := Comp(5.0, 3.0);
   y := Comp(4.0, 9.0);
   Suma := x + y;
   Resta := x - y;
   Mult := x * y;
   Div := x / y;
   Conjugado := Conj(x);

   Put_Line("Suma = " & numero_float(Suma));
   Put_Line("Resta = " & numero_float(Resta));
   Put_Line("Multiplicación = " & numero_float(Mult));
   Put_Line("División = " & numero_float(Div));
   Put_Line("Conjugado = " & numero_float(Conjugado));


end Main;
