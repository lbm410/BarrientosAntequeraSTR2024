with Ada.Text_IO, Numeros_Complejos; use Ada.Text_IO, Numeros_Complejos;

procedure Main is

   x, y, Suma, Resta, Multiplicacion, Division, Conjugado : Complejo;

begin

   x := Comp(5.0, 3.0);
   y := Comp(4.0, 9.0);
   Suma := x + y;
   Resta := x - y;
   Multiplicacion := x * y;
   Division := x / y;
   Conjugado := Conj(x);

   Put_Line("Suma = " & numero_float(Suma));
   Put_Line("Resta = " & numero_float(Resta));
   Put_Line("Multiplicación = " & numero_float(Multiplicacion));
   Put_Line("División = " & numero_float(Division));
   Put_Line("Conjugado = " & numero_float(Conjugado));


end Main;
