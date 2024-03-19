package body Simulador is

   function ST1_f(ST2 : Float) return Float is
      ST1 : Float;
   begin
      ST1 := ST2 - 10.0;
      return ST1;
   end ST1_f;

   function ST2_f(SR1 : Float; ST4 : Float; ST1 : Float; SC1 : Float; Tt : Float) return Float is
      aux : Float;
   begin
      aux := ST1 + ((b*Leq*SR1*c)/(SC1*Cp*p)) - ((H*(Tt-ST4)*c)/(SC1*Cp*p));
      return aux;
   end ST2_f;

   function Tt_f(ST1, ST2 : Float) return Float is
      Tt : Float;
   begin
      Tt := (ST1 + ST2) / 2.0;
      return Tt;
   end Tt_f;

   function SD1_f(SC2, ST2, ST3 :Float) return Float is
      SD1 : Float;
   begin
      SD1 := 24.0*(0.135+0.003*ST2-0.0203*ST3-0.001*SC2+0.0004*ST2*SC2);
      return SD1;
   end SD1_f;

   -- Procedimientos Ejercicio 2

   function SC1_f(SR1, Tt, ST4, ST2, ST1 : Float) return Float is
      SC1 : Float;
   begin
      SC1 := (((b*Leq*SR1) - (H*(Tt - ST4)))*c) / (Cp*p*(ST2 - ST1));
      return SC1;
   end SC1_f;

   function SC2_f(SD1, ST2, ST3 : Float) return Float is
      SC2 : Float;
   begin
      SC2 := ((SD1/24.0) - 0.135 - 0.003*ST2 + 0.0203*ST3) / (0.00004*ST2 - 0.001);
      return SC2;
   end SC2_f;

end Simulador;
