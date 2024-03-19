package Simulador is
    -- Definición de constantes
    beta : constant Float;
    Leq : constant Float;
    c : constant Float;
    Cp : constant Float;
    p : constant Float;
    H : constant Float;
    N : constant Integer; -- Número total de iteraciones
    Delta_T : constant Float; -- Parámetro de simulación

    function ST2(k: Integer; ST1k_1, SR1k, SC1k, ST4k: Float) return Float;
    function Tt(k: Integer; ST1_k_1, ST2_k_1: Float) return Float;
    function ST1(k: Integer; ST2_k: Float) return Float;
    function SD3(k: Integer; SD3_k_0, SD3_k_menos_uno :Float )return float;
end Simulador;
