with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Ejercicio6 is

   type Fecha_Nacimiento is record
      Dia   : Integer;
      Mes   : Integer;
      Anio  : Integer;
   end record;

   type Datos_Personales is record
      Nombre          : Unbounded_String;
      Apellidos       : Unbounded_String;
      Fecha_Nac       : Fecha_Nacimiento;
   end record;

   Lucas : constant Datos_Personales := (
      Nombre      => To_Unbounded_String("Lucas"),
      Apellidos   => To_Unbounded_String("Barrientos Muñoz"),
      Fecha_Nac   => (Dia => 27, Mes => 7, Anio => 2003)
                                        );

   Adrian : constant Datos_Personales := (
      Nombre      => To_Unbounded_String("Adrian"),
      Apellidos   => To_Unbounded_String("Antequera Ramirez"),
      Fecha_Nac   => (Dia => 12, Mes => 2, Anio => 2003)
                                        );

   procedure Imprimir_Ejercicio6;

end Ejercicio6;
