# 🗄️ Atividade SQL – Comandos Básicos 

Este projeto contém um script SQL para criar um banco de dados simples de uma **loja**, com inserção de dados, atualização, exclusão e consultas filtradas.

## 📋 Descrição da Atividade

A atividade foi dividida em 5 etapas:

1. **Criação do banco de dados e tabelas**
2. **Inserção de 10 registros em cada tabela**
3. **Dois exemplos de UPDATE**
4. **Um exemplo de DELETE**
5. **Dois exemplos de SELECT com filtros**

---

## 🛠️ Estrutura do Banco de Dados

O banco é composto por 3 tabelas:

- **clientes** – informações sobre os clientes
- **produtos** – catálogo de produtos da loja
- **pedidos** – pedidos realizados pelos clientes

**Relacionamentos:**
- `pedidos` referencia `clientes` e `produtos` por chaves estrangeiras.

---

## 📂 Script SQL

O arquivo `banco.sql` contém:

- Criação do banco de dados `lojaDB`
- Criação das tabelas com colunas, tipos de dados e chaves
- Inserção de 10 registros em cada tabela
- Exemplos de **UPDATE**, **DELETE** e **SELECT**

---

## ▶️ Como Executar

### 1. Requisitos
- **MySQL** instalado (ou MariaDB)
- **VS Code** com extensões recomendadas:
  - [SQLTools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools) + driver MySQL  
  - ou [Database Client](https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-database-client2)

---

### 2. Passos

#### Usando o VS Code + Database Client
1. Instale a extensão **Database Client**
2. Conecte ao MySQL:
