function [ proposta, avalvc ] = avaliacao(NITER, pastos, forrageiras)
    forrageirasLength = length(forrageiras);
    pastosLength = length(pastos);
    
    proposta = randi(forrageirasLength, pastosLength, 1);
    avalvc = nota(pastos, forrageiras, proposta); 
    
    for ia = 1:NITER
        propostan = proposta;
        
        ii = randi([1 pastosLength],2,1);
        propostan(ii(1)) = proposta(ii(2));
        propostan(ii(2)) = proposta(ii(1));
        
        avalvn = nota(pastos, forrageiras, propostan); 
        
        if avalvn > avalvc
            proposta = propostan;
            avalvc = avalvn;
        end
    end
end

function soma = nota(pastos, forrageiras, proposta)
    soma = 0.0;
    for ia = 1 : length(pastos)
        pasto = pastos(ia);
        forrageira = forrageiras(proposta(ia));
        somaIa = calculo(pasto, forrageira);
        soma = soma + somaIa;
    end
end

function nota = calculo(pasto, forrageira)
    nota = 0.0;
    if (pasto.Frio == 1)
        nota = nota + forrageira.Frio;
    end
    
    if (pasto.Seca > 20)
        nota = nota + (forrageira.Seca / 3);
    elseif (pasto.Seca > 40) 
        nota = nota + (forrageira.Seca / 2);
    elseif (pasto.Seca > 60) 
        nota = nota + forrageira.Seca;
    end
    
    if (pasto.Alagamento > 20)
        nota = nota + (forrageira.Alagamento / 3);
    elseif (pasto.Alagamento > 40) 
        nota = nota + (forrageira.Alagamento / 2);
    elseif (pasto.Alagamento > 60) 
        nota = nota + forrageira.Alagamento;
    end
    
    if (pasto.Inclinacao == 1 && forrageira.Inclinacao == 0)
        nota = nota - 100;
    end
    
    nota = nota + ((pasto.Precipitacao - forrageira.Precipitacao)/100);
    nota = nota + (pasto.Fertilidade * forrageira.Fertilidade);
    nota = nota + forrageira.Digestibilidade;
    nota = nota + forrageira.Palatabilidade;
    nota = nota + forrageira.Proteina;
    nota = nota + forrageira.Producao;
    nota = nota - forrageira.Manutencao;
end