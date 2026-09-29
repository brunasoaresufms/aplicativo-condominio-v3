# CondoFácil

Protótipo acadêmico de uma aplicação para moradores de um condomínio, desenvolvido no Projeto Integrador I – Programa de Extensão UFMS Digital.

O CondoFácil foi pensado para facilitar a comunicação entre moradores e a divulgação de serviços, habilidades e produtos dentro da comunidade do condomínio.

## Objetivo

Desenvolver uma solução digital que permita aos moradores:

* divulgar serviços e habilidades;
* encontrar prestadores de serviços;
* divulgar produtos para venda;
* consultar serviços e produtos disponíveis;
* entrar em contato com outros usuários;
* avaliar serviços realizados.

## Tecnologias utilizadas

### Aplicação web

* HTML5
* CSS3
* JavaScript
* Bootstrap

### Banco de dados

* MySQL
* MySQL Workbench
* SQL

### Controle de versão

* Git
* GitHub

## Estrutura do projeto

```text
aplicativo-condominio-v3/
│
├── banco/
│   ├── 01_criacao_banco.sql
│   ├── 02_tabelas.sql
│   ├── 03_inserts.sql
│   └── 04_consultas.sql
│
├── css/
│   └── arquivos de estilização
│
├── js/
│   └── arquivos JavaScript
│
├── index.html
│
└── README.md
```

## Aplicação web

A aplicação possui uma interface com aparência de aplicativo e foi desenvolvida utilizando HTML, CSS, JavaScript e Bootstrap.

Entre as funcionalidades previstas estão:

* acesso à área de serviços;
* divulgação de serviços;
* divulgação de produtos;
* consulta de anúncios;
* comunicação entre usuários;
* navegação entre as principais áreas da aplicação.

A interface foi desenvolvida de forma responsiva, permitindo sua utilização em diferentes tamanhos de tela.

## Banco de dados

O banco de dados utilizado no projeto é denominado `condominio`.

Ele possui as seguintes tabelas:

* `usuario` — armazena os usuários da aplicação;
* `categoria` — classifica serviços e produtos;
* `servico` — armazena os serviços divulgados;
* `produto` — armazena os produtos disponíveis para venda;
* `mensagem` — registra a comunicação entre usuários;
* `avaliacao` — registra avaliações dos serviços.

### Principais relacionamentos

* Um usuário pode cadastrar vários serviços.
* Um usuário pode cadastrar vários produtos.
* Uma categoria pode estar relacionada a vários serviços.
* Uma categoria pode estar relacionada a vários produtos.
* Usuários podem enviar e receber mensagens.
* Um serviço pode receber avaliações.

## Arquivos SQL

Os arquivos SQL estão organizados na pasta `banco`.

### 01_criacao_banco.sql

Cria o banco de dados `condominio`.

### 02_tabelas.sql

Cria as tabelas, chaves primárias, chaves estrangeiras e relacionamentos.

### 03_inserts.sql

Insere dados de exemplo para possibilitar os testes da estrutura do banco.

> Este arquivo deve ser executado apenas uma vez em um banco de testes para evitar registros duplicados.

### 04_consultas.sql

Apresenta exemplos de operações de manipulação e consulta de dados:

* `INSERT` — inserção;
* `SELECT` — consulta;
* `UPDATE` — atualização;
* `DELETE` — remoção;
* `INNER JOIN` — consulta envolvendo relacionamentos entre tabelas.

## Como executar a aplicação web

1. Baixe ou clone este repositório.
2. Abra a pasta do projeto.
3. Abra o arquivo `index.html` em um navegador.
4. Navegue pelas funcionalidades disponíveis na interface.

## Como executar o banco de dados

1. Abra o MySQL Workbench.
2. Conecte-se ao servidor MySQL.
3. Abra o arquivo `banco/01_criacao_banco.sql` e execute.
4. Execute `banco/02_tabelas.sql`.
5. Execute `banco/03_inserts.sql`.
6. Execute `banco/04_consultas.sql`.

Os arquivos devem ser executados nessa ordem para que o banco seja criado corretamente.

## Controle de versão

O projeto utiliza Git e GitHub para controle de versão e organização dos arquivos.

As alterações são registradas por meio de commits com mensagens explicativas, permitindo acompanhar a evolução do projeto durante seu desenvolvimento.

## Repositório GitHub

O código-fonte, os arquivos SQL e a documentação do projeto estão disponíveis no repositório:

https://github.com/brunasoaresufms/aplicativo-condominio-v3

## Observação

Este projeto possui finalidade acadêmica e representa um protótipo desenvolvido no Projeto Integrador I.

A aplicação apresentada ainda não possui autenticação real, servidor de produção ou integração completa entre a interface web e o banco de dados. A implementação completa dessas funcionalidades poderá ser realizada em etapas posteriores do projeto.
