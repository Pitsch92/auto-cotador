# 🧩 Registro de Validação de Integridade – Banco de Dados Auto Cotador

**Data:** 09/10/2025  
**Responsável:** GUILHERME PITSCH  
**Ambiente:** Docker + PostgreSQL 15  
**Arquivo de schema:** `db/init.sql`

---

## 🔍 Objetivo
Verificar a integridade referencial, o funcionamento das chaves primárias e estrangeiras, e a consistência dos dados entre as tabelas:
- **fornecedores**
- **produtos**
- **precos**
- **pedidos**
- **itens_pedido**

---

## 🧪 Testes Executados

### 1️⃣ Inserção de fornecedor e produto válidos
```sql
INSERT INTO fornecedores (nome, contato, email, cnpj)
VALUES ('Fornecedor Teste', 'João Silva', 'teste@empresa.com', '12.345.678/0001-99');

INSERT INTO produtos (nome, unidade)
VALUES ('Açúcar Refinado', 'KG');
