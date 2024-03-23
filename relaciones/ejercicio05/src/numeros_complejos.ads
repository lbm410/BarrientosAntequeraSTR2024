package Numeros_Complejos is

   type Complejo is private;
   
   function "+"(X, Y : Complejo) return Complejo;
   function "-"(X, Y : Complejo) return Complejo;
   function "*"(X, Y : Complejo) return Complejo;
   function "/"(X, Y : Complejo) return Complejo;
   function Conj(X : Complejo) return Complejo;
   function P_Real(X : Complejo) return Complejo;
   function P_Imag(X : Complejo) return Complejo;
   function Comp(R, I : Float) return Complejo;
   function numero_float(X : Complejo) return String;
   
private type Complejo is
      record
         P_Real : Float;
         P_Imag : Float;
      end record;
   
end Numeros_Complejos;
