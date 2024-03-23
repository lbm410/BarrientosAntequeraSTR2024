package body Numeros_Complejos is

   function "+" (X, Y : Complejo) return Complejo is
   begin
      return Complejo'(X.P_Real + Y.P_Real, X.P_Imag + Y.P_Imag);
   end "+";

   function "-" (X, Y : Complejo) return Complejo is
   begin
      return Complejo'(X.P_Real - Y.P_Real, X.P_Imag - Y.P_Imag);

   end "-";

   function "*" (X, Y : Complejo) return Complejo is
      P_Real : Float := X.P_Real * Y.P_Real - X.P_Imag * Y.P_Imag;
      P_Imag : Float := X.P_Real * Y.P_Real + X.P_Imag * Y.P_Imag;
   begin
       return Complejo'(P_Real => P_Real, P_Imag => P_Imag);
   end "*";

   function "/" (X, Y : Complejo) return Complejo is
      P_Real : Float := (X.P_Real * X.P_Real + X.P_Imag * Y.P_Imag) / (Y.P_Real ** 2 + Y.P_Imag ** 2);
      P_Imag : Float := (X.P_Imag * Y.P_Real + X.P_Real * Y.P_Imag) / (Y.P_Real ** 2 + Y.P_Imag ** 2);
   begin
      return Complejo'(P_Real => P_Real, P_Imag => P_Imag);
   end "/";

   function Conj (X : Complejo) return Complejo is
   begin
      return Complejo'(P_Real => X.P_Real, P_Imag => -X.P_Imag);
   end Conj;

   function P_Real (X : Complejo) return Complejo is
   begin
      return Comp(X.P_Real, 0.0);
   end P_Real;

   function P_Imag (X : Complejo) return Complejo is
   begin
      return Comp(X.P_Imag, 0.0);
   end P_Imag;
   function Comp (R, I : Float) return Complejo is
      C : Complejo;
   begin
      C.P_Real := R;
      C.P_Imag := I;
      return C;
   end Comp;

   function numero_float (X : Complejo) return String is
   begin
      return Float'Image(X.P_Real) & " + " & Float'Image(X.P_Imag) & "i";
   end numero_float;

end Numeros_Complejos;
