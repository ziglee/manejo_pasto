classdef Forrageira
    
    properties (SetAccess = private)
        Nome % nome da forrageira
        Frio % tolerância ao frio (baixa, média, alta) => (1,2,3)
        Seca % tolerância à seca (baixa, média, alta) => (1,2,3)
        Alagamento % tolerância à alagamento (baixa, média, alta) => (1,2,3)
        Precipitacao % exigência de precipitação pluviométrica (valor mínimo em milímetros)
        Fertilidade % exigência de fertilidade do solo (alta, média, baixa) => (1,2,3)
        Digestibilidade % digestibilidade (média, boa, ótima) => (1,2,3)
        Palatabilidade % palatabilidade (média, boa, ótima) => (1,2,3)
        Proteina % teor de proteína na matéria seca (valor em porcentagem)
        Producao % produção de forragem (valor em ton ms/ha/ano)
        Manutencao % custo de manutenção (alto, médio, baixo) => (1,2,3) 
        Inclinacao % tolerância a solo inclinado (não, sim) => (1,0)
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

