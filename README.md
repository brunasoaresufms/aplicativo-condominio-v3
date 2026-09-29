# CondoFácil

Protótipo acadêmico de uma aplicação para moradores de um condomínio, desenvolvido no Projeto Integrador I – Programa de Extensão UFMS Digital.

## Objetivo

Facilitar a divulgação e a busca de serviços, habilidades e produtos dentro da comunidade do condomínio, além de permitir a comunicação entre os usuários.

## Tecnologias

- MySQL
- MySQL Workbench
- SQL
- Git
- GitHub

## Banco de dados

O banco `condominio` possui as tabelas `usuario`, `categoria`, `servico`, `produto`, `mensagem` e `avaliacao`.

### Principais relacionamentos

- Um usuário pode cadastrar vários serviços.
- Um usuário pode cadastrar vários produtos.
- Uma categoria pode estar relacionada a vários serviços e produtos.
- Usuários podem enviar e receber mensagens.
- Um serviço pode receber avaliações.

## Arquivos SQL

Execute os arquivos nesta ordem:

1. `banco/01_criacao_banco.sql` — cria o banco.
2. `banco/02_tabelas.sql` — cria as tabelas e relacionamentos.
3. `banco/03_inserts.sql` — insere dados de exemplo.
4. `banco/04_consultas.sql` — demonstra consultas, UPDATE, DELETE e INNER JOIN.

> Execute `03_inserts.sql` apenas uma vez no banco de testes para evitar registros duplicados.

## Operações demonstradas

- INSERT — inserção de dados;
- SELECT — consulta;
- UPDATE — atualização;
- DELETE — remoção;
- INNER JOIN — consulta envolvendo relacionamento entre tabelas.

## Como executar

1. Abra o MySQL Workbench e conecte-se ao servidor local.
2. Execute os quatro arquivos, na ordem indicada.
3. No arquivo `04_consultas.sql`, observe os resultados de cada operação.

## Repositório GitHub

https://github.com/brunasoaresufms/aplicativo-condominio-v3

## Observação

Este projeto é uma implementação acadêmica. A futura aplicação ainda não possui autenticação real, servidor de produção ou integração completa com o banco.
