package Cola is
   
   type Elemento is range -100 .. 100;
   function Vacia return Boolean;
   procedure Poner(E: Elemento);
   procedure Quitar(E: out Elemento);
   
end Cola;
