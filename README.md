🎵 Projeto de Banco de Dados — Escola de Música

Este repositório contém a documentação e os scripts SQL desenvolvidos para o projeto da disciplina Banco de Dados, utilizando como minimundo a Escola de Música.

O foco deste projeto está na implementação prática dos comandos SQL (DDL, DML, DQL) solicitados, sem a inclusão dos modelos MER e MR, conforme orientação.

📌 Descrição do MiniMundo — Escola de Música

A Escola de Música necessita de um banco de dados capaz de organizar e gerenciar informações relacionadas às suas atividades musicais e administrativas. O sistema foi pensado para armazenar dados sobre:

Orquestras: informações institucionais como nome, cidade, país e data de criação;

Sinfonias: composições musicais executadas pelas orquestras, contendo nome, compositor e data de criação;

Músicos: artistas vinculados a uma única orquestra, com dados pessoais e profissionais;

Funções dos Músicos: funções exercidas por músicos em sinfonias específicas, com controle de datas;

Instrumentos Musicais: instrumentos que os músicos sabem tocar e utilizam em apresentações.

Esse banco de dados permite acompanhar a estrutura das orquestras, a participação dos músicos nas sinfonias e a gestão das apresentações musicais ao longo do tempo.

🗂️ Estrutura do Projeto

Os arquivos SQL do projeto estão organizados de acordo com o tipo de comando executado:

📁 sql/
 ├── ddl_create.sql
 ├── ddl_alter.sql
 ├── ddl_drop.sql
 ├── dml_insert.sql
 ├── dml_update_delete.sql
 ├── dql_selects.sql
 └── ddl_views.sql
🛠️ Comandos SQL Utilizados
🔹 DDL — Data Definition Language

Os comandos DDL são responsáveis pela definição e modificação da estrutura do banco de dados.

✔ Criação das Tabelas e Views

Utilização do comando CREATE TABLE para criar todas as tabelas do banco;

Definição de chaves primárias e estrangeiras para garantir integridade referencial;

Criação de VIEWS para facilitar consultas e relatórios importantes.

✔ Alterações de Estrutura

Uso do comando ALTER TABLE para:

Adicionar colunas;

Alterar tipos de dados;

Inserir e remover restrições.

Foram implementados no mínimo 10 comandos de ALTER TABLE, conforme solicitado.

✔ Exclusão de Estruturas

Uso do comando DROP TABLE e DROP VIEW para remover todas as estruturas do banco;

As exclusões respeitam a ordem correta para evitar conflitos de dependência.

🔹 DML — Data Manipulation Language

Os comandos DML são utilizados para manipular os dados armazenados nas tabelas.

✔ Inserção de Dados

Utilização do comando INSERT INTO;

Cada tabela possui aproximadamente 20 registros, mantendo um volume equilibrado de dados;

Os dados inseridos simulam um cenário realista da Escola de Música.

✔ Atualização e Exclusão

Uso dos comandos UPDATE e DELETE;

Foram criados no mínimo 20 scripts para:

Atualizar dados de músicos, orquestras e sinfonias;

Excluir registros específicos de forma controlada.

🔹 DQL — Data Query Language

Observação: Nem todas as consultas utilizam JOIN. Algumas consultas fazem uso de subconsultas (SUBSELECT), atendendo ao critério exigido no projeto de utilizar JOIN e/ou subselect.

Os comandos DQL são responsáveis pelas consultas e relatórios do banco de dados.

✔ Consultas SQL

Uso do comando SELECT com:

JOIN entre múltiplas tabelas;

Subconsultas (SUBSELECT), quando necessário;

Implementação de no mínimo 20 consultas, respondendo perguntas relevantes como:

Quais músicos participam de determinada sinfonia;

Quais instrumentos são utilizados em apresentações específicas;

Orquestras e seus respectivos músicos;

Histórico de funções exercidas por músicos.

✔ Views para Relatórios

Criação de no mínimo 10 VIEWS;

As views representam os principais relatórios do sistema, facilitando a análise e reutilização das consultas.

🎯 Objetivo do Projeto

Este projeto tem como objetivo aplicar de forma prática os conceitos de Banco de Dados Relacional, reforçando o uso correto de:

Estruturação de tabelas;

Manipulação de dados;

Consultas SQL com JOINs;

Criação de relatórios através de views.

Tudo isso contextualizado em um cenário realista de uma Escola de Música.

✨ Projeto desenvolvido exclusivamente para fins acadêmicos.
