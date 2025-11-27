Projeto SQL – Banco de Dados Oficina Mecânica

Este repositório contém a implementação completa de um banco de dados relacional para o mini-mundo de uma Oficina Mecânica, incluindo modelagem, normalização e scripts de manipulação de dados (DML).
O objetivo é aplicar na prática os fundamentos de Banco de Dados, SQL e versionamento com Git/GitHub.

📌 Conteúdo do Repositório
📦 /sql
 ├── create_tables.sql        → Criação do banco e tabelas
 ├── insert_data.sql          → Inserção de dados iniciais
 ├── select_queries.sql       → Consultas SQL
 ├── update_commands.sql      → Comandos UPDATE
 └── delete_commands.sql      → Comandos DELETE

README.md

📊 Visão Geral do Projeto

O sistema modelado representa as operações essenciais de uma oficina, incluindo:

Cadastro de clientes

Registro de veículos

Mecânicos e suas especialidades

Serviços realizados

Itens de ordem de serviço

Controle de pagamentos

O banco foi projetado com foco em consistência, integridade e eliminação de redundâncias.

📐 Modelagem e Normalização

O modelo lógico (DER) foi revisado e todas as tabelas passaram pelo processo de normalização:

✔ 1ª Forma Normal (1FN) – remoção de atributos multivalorados e dados repetidos

✔ 2ª Forma Normal (2FN) – eliminação de dependências parciais

✔ 3ª Forma Normal (3FN) – remoção de dependências transitivas

As entidades ItemServico e Pagamento foram documentadas de acordo com as três formas normais.

🛠 Scripts SQL Incluídos
🔹 1. create_tables.sql

Contém:

Criação do banco de dados

Definição das tabelas

Chaves primárias e estrangeiras

Tipos de dados coerentes com o DER

Restrições de integridade

🔹 2. insert_data.sql

Inclui povoamento inicial com:

Clientes reais

Veículos associados

Mecânicos e especialidades

Ordens, itens e serviços

Pagamentos

🔹 3. select_queries.sql

Consultas práticas utilizando:

WHERE

ORDER BY

LIMIT

JOIN entre múltiplas tabelas

Consultas aplicadas ao contexto da oficina

🔹 4. update_commands.sql

Comandos de atualização contendo:

Alteração de dados de clientes

Ajustes em valores de serviços

Atualização de informações vinculadas a ordens

🔹 5. delete_commands.sql

Inclui exclusões controladas, todas com WHERE, evitando violações de chave estrangeira.

🚀 Como Executar os Scripts

Abra MySQL Workbench ou PGAdmin.

Execute primeiro o arquivo create_tables.sql.

Em seguida, execute insert_data.sql para inserir os registros.

Utilize os demais arquivos para testes, análises e manipulações.

🎯 Objetivos Educacionais
Taxonomia de Bloom

Aplicar: Manipular dados usando SQL

Criar: Montar scripts completos e funcionais

Taxonomia de Fink

Aplicação prática em ferramentas reais

Integração entre normalização, SQL e modelagem

Aprendizagem ativa, interpretando erros e corrigindo scripts
