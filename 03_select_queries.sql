-- 1. Lista todas as ordens de serviço com cliente e veículo
SELECT OS.ID_ordem_servico, C.Nome AS Cliente, V.Placa, OS.Status
FROM OrdemServico OS
JOIN Veiculo V ON OS.ID_veiculo = V.ID_veiculo
JOIN Cliente C ON V.ID_cliente = C.ID_cliente;

-- 2. Serviços realizados em uma OS
SELECT S.Nome, ISV.Quantidade, ISV.Valor_unitario
FROM ItemServico ISV
JOIN Servico S ON ISV.ID_servico = S.ID_servico
WHERE ISV.ID_ordem_servico = 1;

-- 3. Mecânicos e suas especialidades
SELECT Nome, Especialidade
FROM Mecanico
ORDER BY Nome;

-- 4. Pagamentos realizados
SELECT P.ID_pagamento, C.Nome, P.ValorPago, P.DataPagamento
FROM Pagamento P
JOIN OrdemServico OS ON P.ID_ordem_servico = OS.ID_ordem_servico
JOIN Veiculo V ON OS.ID_veiculo = V.ID_veiculo
JOIN Cliente C ON V.ID_cliente = C.ID_cliente;

-- 5. Limitar resultados
SELECT * FROM Servico LIMIT 2;
