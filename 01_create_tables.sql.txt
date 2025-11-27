CREATE TABLE Cliente (
    ID_cliente INT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF VARCHAR(14),
    Telefone VARCHAR(20),
    Endereco VARCHAR(150)
);

CREATE TABLE Veiculo (
    ID_veiculo INT PRIMARY KEY,
    Placa VARCHAR(10),
    Marca VARCHAR(50),
    Modelo VARCHAR(50),
    Ano INT,
    ID_cliente INT,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);

CREATE TABLE Mecanico (
    ID_mecanico INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(50),
    Telefone VARCHAR(20)
);

CREATE TABLE Servico (
    ID_servico INT PRIMARY KEY,
    Nome VARCHAR(100),
    Valor DECIMAL(10,2)
);

CREATE TABLE OrdemServico (
    ID_ordem_servico INT PRIMARY KEY,
    ID_veiculo INT,
    ID_mecanico INT,
    DataAbertura DATE,
    Status VARCHAR(30),
    FOREIGN KEY (ID_veiculo) REFERENCES Veiculo(ID_veiculo),
    FOREIGN KEY (ID_mecanico) REFERENCES Mecanico(ID_mecanico)
);

CREATE TABLE ItemServico (
    ID_ordem_servico INT,
    ID_servico INT,
    Quantidade INT,
    Valor_unitario DECIMAL(10,2),
    PRIMARY KEY (ID_ordem_servico, ID_servico),
    FOREIGN KEY (ID_ordem_servico) REFERENCES OrdemServico(ID_ordem_servico),
    FOREIGN KEY (ID_servico) REFERENCES Servico(ID_servico)
);

CREATE TABLE Pagamento (
    ID_pagamento INT PRIMARY KEY,
    ID_ordem_servico INT,
    DataPagamento DATE,
    ValorPago DECIMAL(10,2),
    FOREIGN KEY (ID_ordem_servico) REFERENCES OrdemServico(ID_ordem_servico)
);
