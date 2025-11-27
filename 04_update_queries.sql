-- Atualizar telefone do cliente
UPDATE Cliente
SET Telefone = '48911112222'
WHERE ID_cliente = 1;

-- Atualizar status da ordem de serviço
UPDATE OrdemServico
SET Status = 'Finalizado'
WHERE ID_ordem_servico = 1;

-- Corrigir valor de um serviço
UPDATE Servico
SET Valor = 180.00
WHERE ID_servico = 1;
