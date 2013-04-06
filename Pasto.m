classdef Pasto
    
    properties (SetAccess = private)
        Identifier      % identificador único
        Frio            % clima frio (não, sim) => (0,1)
        Seca            % presença de seca durante o ano (valor em porcentagem)
        Alagamento      % presença de alagamento durante o ano (valor em porcentagem)
        Precipitacao    % média de precipitação pluviométrica (valor em milímetros)
        Fertilidade     % fertilidade do solo (baixa, média, alta) => (1,2,3)
        Inclinacao      % inclinado (não, sim) => (0,1)
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

