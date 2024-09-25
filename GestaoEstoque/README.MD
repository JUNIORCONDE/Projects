# Sistema de Gerenciamento de Estoque em Ruby

Este é um projeto simples de gerenciamento de estoque, desenvolvido em Ruby, que utiliza arquivos JSON para armazenar e gerenciar os dados dos produtos. O sistema permite o controle de entrada, saída e vendas de produtos, oferecendo uma solução prática e sem necessidade de um banco de dados tradicional.

## Índice

- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
- [Requisitos](#requisitos)
- [Instalação](#instalação)
- [Uso](#uso)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Contribuições](#contribuições)
- [Licença](#licença)

## Sobre o Projeto

O projeto foi desenvolvido com o intuito de gerenciar produtos em um estoque, facilitando o controle de entradas, saídas e vendas. Os dados são persistidos em arquivos JSON, o que torna o sistema simples e leve. Essa aplicação é uma boa base para projetos maiores e pode ser estendida para incluir mais funcionalidades.

## Funcionalidades

- **Adicionar Produto:** Cadastra um novo produto no sistema com informações como nome, código, fornecedor, data de compra, valor e quantidade.
- **Registrar Entrada de Produto:** Adiciona mais unidades de um produto já existente no estoque.
- **Registrar Venda:** Registra uma venda, atualizando automaticamente a quantidade de produtos no estoque.
- **Exibir Estoque:** Mostra todos os produtos disponíveis no estoque com suas respectivas quantidades.

## Requisitos

Antes de começar, certifique-se de que seu ambiente atenda aos seguintes requisitos:

- **Ruby** (versão 2.5 ou superior)
- **JSON** (incluído nas bibliotecas padrão do Ruby)

## Instalação

1. **Clone o repositório**:

    ```bash
    git clone https://github.com/seu-usuario/seu-repositorio.git
    ```

2. **Entre no diretório do projeto**:

    ```bash
    cd seu-repositorio
    ```

3. **Instale as dependências** (se houver):

    No momento, o projeto não possui dependências externas, apenas Ruby e JSON (que é padrão no Ruby).

## Uso

Para utilizar o sistema, basta executar o arquivo principal que inicializa o menu.

1. **Rodar o sistema**:

    ```bash
    ruby main.rb
    ```

2. **Navegar pelo menu**:

    O menu oferece as seguintes opções:
    
    - **1:** Adicionar um novo produto ao estoque.
    - **2:** Registrar a entrada de produtos no estoque.
    - **3:** Registrar uma venda.
    - **4:** Exibir os produtos e suas quantidades no estoque.
    - **5:** Sair do sistema.

## Estrutura do Projeto

A estrutura do projeto é simples, com as seguintes classes principais:

- `Menu`: Gerencia a navegação entre as opções do sistema.
- `Estoque`: Gerencia a lista de produtos, carregando e salvando os dados em um arquivo JSON (`estoque.json`).
- `Produto`: Define a estrutura de um produto, contendo informações como código, nome, fornecedor, data da compra, valor da compra e quantidade.
- `Venda`: Gerencia a venda de produtos e a atualização automática do estoque.

### Exemplo de Estrutura do Arquivo JSON (`estoque.json`)

```json
[
  {
    "codigo": "001",
    "nome": "Teclado Mecânico",
    "fornecedor": "Fornecedor X",
    "data_compra": "2024-09-24",
    "valor_compra": 250.50,
    "quantidade": 10
  },
  {
    "codigo": "002",
    "nome": "Mouse Gamer",
    "fornecedor": "Fornecedor Y",
    "data_compra": "2024-09-24",
    "valor_compra": 150.00,
    "quantidade": 5
  }
]
