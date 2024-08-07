# MySQL Data Manipulation Project

This project aims to demonstrate the creation and use of stored procedures, stored functions, and triggers in MySQL using a sample database.

## Features

1. **Stored Procedure**: Creation of a stored procedure that takes a customer ID, a start date, and an end date as input. The procedure returns a list of purchases made by the customer between the specified dates, including the customer's name, purchase ID, total amount, and the name and quantity of each purchased product.

2. **Stored Function**: Creation of a stored function that takes a customer ID and returns whether the customer is "PREMIUM" or "REGULAR". A customer is classified as "PREMIUM" if they have spent more than R$ 10,000 in the store. Otherwise, they are classified as "REGULAR".

3. **Trigger**: Creation of a trigger that operates on the `usuario` table. When a new user is added, the trigger automatically applies the MD5() function to the `senha` column, using `NEW` variables.

## Database Structure

The database includes the following tables:

- `cargo`: Stores information about job positions.
- `usuario`: Stores information about users, including login and password.
- `cliente`: Stores information about customers, including name, CPF, address, and phone number.
- `funcionario`: Stores information about employees, including name, phone number, CPF, and references to job positions and users.
- `venda`: Stores information about sales, including date, total amount, customer, employee, and payment details.
- `produto`: Stores information about products, including name, description, stock, and manufacturer.
- `item_venda`: Stores details about items sold in each sale, including quantity, unit price, and subtotal.

## Usage

1. Import the database creation script into MySQL Workbench or another MySQL client.
2. Execute the script to create the tables and the database schema.
3. Create the stored procedures, stored functions, and triggers as specified.
4. Use the procedure and function calls to perform queries and obtain the desired results.

# Projeto de Manipulação de Dados em MySQL-Traduzido:

Este projeto tem como objetivo demonstrar a criação e utilização de stored procedures, stored functions e triggers em MySQL, utilizando um banco de dados de exemplo.

## Funcionalidades

1. **Stored Procedure**: Criação de uma stored procedure que recebe o ID de um cliente, uma data inicial e uma data final. A procedure retorna a lista de compras realizadas pelo cliente entre as datas informadas, incluindo o nome do cliente, o ID da compra, o total da compra, e o nome e a quantidade de cada produto comprado.

2. **Stored Function**: Criação de uma stored function que recebe o ID de um cliente e retorna se o cliente é "PREMIUM" ou "REGULAR". Um cliente é classificado como "PREMIUM" se já realizou mais de R$ 10 mil em compras na loja. Caso contrário, é classificado como "REGULAR".

3. **Trigger**: Criação de um trigger que atua sobre a tabela `usuario`. Ao incluir um novo usuário, o trigger aplica automaticamente a função MD5() à coluna `senha`, utilizando variáveis com `NEW`.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

- `cargo`: Armazena informações sobre cargos.
- `usuario`: Armazena informações sobre usuários, incluindo login e senha.
- `cliente`: Armazena informações sobre clientes, incluindo nome, CPF, endereço e telefone.
- `funcionario`: Armazena informações sobre funcionários, incluindo nome, telefone, CPF e referências a cargos e usuários.
- `venda`: Armazena informações sobre vendas, incluindo data, valor total, cliente, funcionário e detalhes de pagamento.
- `produto`: Armazena informações sobre produtos, incluindo nome, descrição, estoque e fabricante.
- `item_venda`: Armazena detalhes sobre os itens vendidos em cada venda, incluindo quantidade, valor unitário e subtotal.

## Como Usar

1. Importe o script de criação do banco de dados no MySQL Workbench ou em outro cliente MySQL.
2. Execute o script para criar as tabelas e o esquema do banco de dados.
3. Crie as stored procedures, stored functions e triggers conforme especificado.
4. Utilize os comandos de chamada das procedures e functions para realizar consultas e obter os resultados desejados.
