![Img do cruso](./img/Captura%20de%20tela%202026-07-25%20005328.png)



# 🗄️ Master Class: Banco de Dados Relacionais & SQL com PostgreSQL

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=postgresql)
![PostgreSQL](https://img.shields.io/badge/DBMS-PostgreSQL-336791?style=for-the-badge&logo=postgresql)
![Course Status](https://img.shields.io/badge/Status-Em%20Andamento%20%2F%20Concluído-brightgreen?style=for-the-badge)
![Exercises](https://img.shields.io/badge/Exercícios-200%2B%20Resolvidos-orange?style=for-the-badge)

> Repositório dedicado ao armazenamento de códigos, projetos práticos e notas de estudo do curso intensivo de **Banco de Dados e SQL com PostgreSQL** (Udemy). O curso aborda desde os fundamentos teóricos de Modelagem e Álgebra Relacional até tópicos avançados como Normalização (até 5FN), Stored Procedures, Triggers e Administração de BD.

---

## 🎯 Objetivo do Repositório

Demonstrar o domínio prático e teórico em **Engenharia/Gestão de Dados** e **Bancos de Dados Relacionais**, apresentando soluções reais para cenários comerciais através de mais de **200 exercícios práticos resolvidos passo a passo**.

---

## 🛠️ Tecnologias e Ferramentas

- **Linguagem de Consulta:** SQL (Structured Query Language)
- **SGBD:** PostgreSQL
- **Conceitos de Modelagem:** Modelo Entidade-Relacionamento (MER), Modelo Conceitual, Lógico e Físico
- **Fundamentos Acadêmicos:** Álgebra Relacional e Normalização Avançada

---

## 📚 Conteúdo Programático & Habilidades Demonstradas

### 1. 🏗️ Modelagem de Dados & Design
- **Projeção do Zero:** Criação de esquemas de banco de dados aplicados a cenários comerciais reais.
- **Estruturação:** Mapeamento de entidades, atributos, cardinalidades e implementação de `PRIMARY KEY` e `FOREIGN KEY`.
- **Normalização Rigorosa:** Aplicação prática das Formas Normais para garantir a integridade dos dados e evitar redundâncias:
  - `1FN`, `2FN`, `3FN`, `BCNF` (Boyce-Codd), `4FN` e `5FN`.

### 2. 💻 SQL Prático (DDL, DML, DQL e DCL)
- **Criação e Gestão (DDL):** Comandos `CREATE`, `ALTER`, `DROP`, restrições (`CHECK`, `DEFAULT`), campos autoincremento e criação de **Domínios**.
- **Manipulação de Dados (DML):** Operações de `INSERT`, `UPDATE` e `DELETE`.
- **Consultas Avançadas (DQL):**
  - Filtragem avançada e agregação de dados (`GROUP BY`, `HAVING`, `SUM`, `AVG`, `MIN`, `MAX`, `COUNT`).
  - Cruzamento de dados complexo utilizando **Joins** (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`).

### 3. ⚡ Programação em Banco de Dados & Otimização
- **Automação:** Desenvolvimento de **Stored Procedures**, **Functions** e **Triggers** (Gatilhos) para regras de negócio complexas.
- **Performance:** Criação e otimização de **Índices** e gestão de **Transações** (ACID).

### 4. 🛡️ Administração de Banco de Dados (DBA Fundamentals)
- **Segurança & Permissões:** Gestão de usuários e concessão granular de acessos (`GRANT`, `REVOKE`).
- **Resiliência:** Execução de rotinas de **Backup** e **Restore** de bases de dados.
- **Teoria Aplicada:** Resolução de consultas complexas através de **Álgebra Relacional**.

---

## 📊 Métricas do Curso

| Métrica | Detalhes |
| :--- | :--- |
| **Carga Horária** | +16 Horas de Conteúdo Prático |
| **Aulas** | +120 Aulas Teóricas e Práticas |
| **Prática** | +200 Exercícios Resolvidos Passo a Passo |
| **Metodologia** | Nível Universitário (Ciência da Computação / Sistemas de Informação) |

---

## 📂 Estrutura de Pastas Sugerida

```text
.
├── 01-modelagem-e-normalizacao/
│   ├── modelo-conceitual.png
│   └── exercicios-formas-normais.md
├── 02-sql-ddl-dml/
│   ├── criacao-tabelas-restricoes.sql
│   └── insercao-e-manipulacao.sql
├── 03-consultas-e-joins/
│   ├── agregacao-dados.sql
│   └── juncoes-complexas.sql
├── 04-programacao-plpgsql/
│   ├── functions-procedures.sql
│   └── triggers-automacao.sql
├── 05-administracao-dba/
│   ├── controle-usuarios-permissoes.sql
│   └── rotinas-backup-restore.sql
└── README.md

-----




