classdef Forrageira
    
    properties (SetAccess = private)
        Nome % nome da forrageira
        Frio % toler�ncia ao frio (baixa, m�dia, alta) => (1,2,3)
        Seca % toler�ncia � seca (baixa, m�dia, alta) => (1,2,3)
        Alagamento % toler�ncia � alagamento (baixa, m�dia, alta) => (1,2,3)
        Precipitacao % exig�ncia de precipita��o pluviom�trica (valor m�nimo em mil�metros)
        Fertilidade % exig�ncia de fertilidade do solo (alta, m�dia, baixa) => (1,2,3)
        Digestibilidade % digestibilidade (m�dia, boa, �tima) => (1,2,3)
        Palatabilidade % palatabilidade (m�dia, boa, �tima) => (1,2,3)
        Proteina % teor de prote�na na mat�ria seca (valor em porcentagem)
        Producao % produ��o de forragem (valor em ton ms/ha/ano)
        Manutencao % custo de manuten��o (alto, m�dio, baixo) => (1,2,3) 
        Inclinacao % toler�ncia a solo inclinado (n�o, sim) => (1,0)
    end
    
    methods
        function FO = Forrageira(Nome,Frio,Seca,Alagamento,Precipitacao,Fertilidade,Digestibilidade,Palatabilidade,Proteina,Producao,Manutencao,Inclinacao)
            FO.Nome = Nome;
            FO.Frio = Frio;
            FO.Seca = Seca;
            FO.Alagamento = Alagamento;
            FO.Precipitacao = Precipitacao;
            FO.Fertilidade = Fertilidade;
            FO.Digestibilidade = Digestibilidade;
            FO.Palatabilidade = Palatabilidade;
            FO.Proteina = Proteina;
            FO.Producao = Producao;
            FO.Manutencao = Manutencao;
            FO.Inclinacao = Inclinacao;
        end
    end
    
end

