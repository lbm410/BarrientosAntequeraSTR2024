package body Simulador is
    function ST2(k: Integer; ST1k_1, SR1k, SC1k, ST4k: Float) return Float is
    begin
         return ST1k_1 + ((beta * Leq * SR1k * c) / (SC1k * Cp * p)) - ((H * (Tt(k, ST1k_1, ST2(k-1)) - ST4k) * c) / (SC1k * Cp * p));
    end ST2;

    function Tt(k: Integer; ST1_k_1, ST2_k_1: Float) return Float is
    begin
        return (ST1_k_1 + ST2_k_1) / 2.0;
    end Tt;

    function ST1(k: Integer; ST2_k: Float) return Float is
    begin
        return 10.0;
    end ST3;

    function SD3(k: Integer; SD3_k_0, SD3_k_menos_uno :Float )return float is
        begin
            if k = 0 then
                return 20.0;
            else
                if k = - 10 then
                    return SD3( k+10 );
                else
                    if k < -10 then
                        raise Constraint_Error with "Invalid value of K";
                    else
                        if k > 0 and k <= N then -- N es el número total de iteraciones.
                            -- Aquí va la ecuación que calcula el valor de SD3 en función del valor actual y anterior.
                            -- Esta ecuación puede ser cualquier cosa que tenga sentido en tu simulación.
                            -- Por ejemplo:
                            Return SD3( K-10 ) + Delta_T*SD3( K-10 ); -- Donde Delta_T es un parámetro de tu simulación.
                        else
                            raise Constraint_Error with "Invalid value of K";
                        end if;
                    end if;
                end if;
            end if;
        End SD3;

end Simulador;
