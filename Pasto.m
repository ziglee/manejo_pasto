classdef Pasto
    
    properties (SetAccess = private)
        Identifier      % identificador �nico
        Frio            % clima frio (n�o, sim) => (0,1)
        Seca            % presen�a de seca durante o ano (valor em porcentagem)
        Alagamento      % presen�a de alagamento durante o ano (valor em porcentagem)
        Precipitacao    % m�dia de precipita��o pluviom�trica (valor em mil�metros)
        Fertilidade     % fertilidade do solo (baixa, m�dia, alta) => (1,2,3)
        Inclinacao      % inclinado (n�o, sim) => (0,1)
    end
    
    methods
        function PA = Pasto(Identifier,Frio,Seca,Alagamento,Precipitacao,Fertilidade,Inclinacao)
            PA.Identifier = Identifier;
            PA.Frio = Frio;
            PA.Seca = Seca;
            PA.Alagamento = Alagamento;
            PA.Precipitacao = Precipitacao;
            PA.Fertilidade = Fertilidade;
            PA.Inclinacao = Inclinacao;
        end      
        function valor = avaliar(PA,Forrageira)
            if (PA.Frio > 0)
                valor = Forrageira.Manutencao;
            else
                valor = 0;
            end
        end
    end    
end

