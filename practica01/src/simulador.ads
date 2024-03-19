package Simulador is

   b : constant Float := 0.13;
   Leq : constant Float := 15.0;
   c : constant Float := 4.0;
   Cp : constant Float := 9.0*2.0*6.0*10000.0;
   p : constant Float := 4190.0;
   H : constant Float := 975.0;

   function ST1_f(ST2: Float) return Float;
   function ST2_f(SR1, ST4, ST1, SC1, Tt : Float) return Float;
   function Tt_f(ST1, ST2: Float) return Float;
   function SD1_f(SC2, ST2, ST3 : Float) return Float;

   function SC1_f(SR1, Tt, ST4, ST2, ST1 : Float) return Float;
   function SC2_f(SD1, ST2, ST3 : Float) return Float;
end Simulador;
