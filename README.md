# 🛒 Ecommerce - Modelo Lógico de Banco de Dados

Modelagem lógica de banco de dados para um cenário de **e-commerce**, com refinamentos como:
- Clientes Pessoa Física (PF) e Pessoa Jurídica (PJ)
- Múltiplas formas de pagamento
- Entregas com status e código de rastreio
- Relacionamentos entre vendedor e fornecedor
- Consultas SQL com diversos níveis de complexidade

---

## 📁 Estrutura do Projeto

- [`Ecommerce_Modelo_Logico.drawio`](Ecommerce_Modelo_Logico.drawio) — Arquivo original da modelagem lógica (editável)
- [`Ecommerce_Modelo_Logico.drawio.png`](Ecommerce_Modelo_Logico.drawio.png) — Imagem do DER (Modelo Entidade-Relacionamento)
- [`ecommerce_script.sql`](ecommerce_script.sql) — Script SQL com criação do banco, inserção de dados e queries

---

## 🧠 Conceitos Aplicados

- Modelo Entidade-Relacionamento Estendido (EER)
- Mapeamento lógico com chaves primárias e estrangeiras
- Relacionamentos 1:N, N:N e especializações
- Tipos de dados, constraints, `ENUM`, `FOREIGN KEY`

---

## 💡 Queries Presentes

- ✅ `SELECT` simples  
- ✅ `JOIN` entre tabelas  
- ✅ Filtros com `WHERE`  
- ✅ Expressões para gerar atributos derivados  
- ✅ Ordenações com `ORDER BY`  
- ✅ Filtros em grupos com `HAVING`  
- ✅ Junções complexas com múltiplas tabelas  

---

## ❓ Exemplos de Perguntas Respondidas com SQL

- Quantos pedidos foram feitos por cada cliente?
- Algum vendedor também é fornecedor?
- Qual a relação de produtos, fornecedores e estoques?
- Quais os nomes dos fornecedores e os produtos fornecidos?

---

## 🚀 Como Utilizar

1. Clone o repositório:
   ```bash
   git clone https://github.com/Thiago1326/ecommerce-modelo-logico.git
   ```

2. Importe o script no seu SGBD (ex: MySQL Workbench)

3. Rode o arquivo `ecommerce_script.sql` para:
   - Criar as tabelas
   - Inserir dados (caso adicione)
   - Testar as queries

---

## 🧾 Licença

Este projeto é livre para fins de estudo e aprimoramento profissional. Sinta-se à vontade para usar e melhorar. 🚀

---

> Desenvolvido com 💻 por **Thiago Gagliardi**
