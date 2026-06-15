# Catálogo de Filmes API

API REST para consulta e manutenção de filmes em um banco MySQL.

## Tecnologias

- Java 17 ou superior
- Spring Boot
- Spring Data JPA
- MySQL
- Postman

## Como importar o banco

1. Abra o MySQL Workbench.
2. Vá em Server > Data Import.
3. Marque Import from Self-Contained File.
4. Selecione o arquivo database/catalogo_filmes.sql.
5. Clique em Start Import.

O script cria o banco catalogo_filmes e as tabelas necessárias.

## Como rodar o projeto

No PowerShell, dentro da pasta do projeto:

```powershell
$env:DB_PASSWORD="sua_senha_do_mysql"
.\mvnw.cmd spring-boot:run
```

A API roda em:

```text
http://localhost:8080
```

## Endpoints

| Método | URL | Descrição |
|---|---|---|
| GET | /filmes | Lista todos os filmes |
| GET | /filmes/{id} | Busca um filme por ID |
| POST | /filmes | Cadastra um filme |
| PUT | /filmes/{id} | Atualiza um filme |
| DELETE | /filmes/{id} | Remove um filme |

## Exemplo de JSON para POST e PUT

```json
{
  "titulo": "Filme Teste",
  "lancamento": "2024-01-01",
  "classificacao": "12",
  "duracaoMin": 120,
  "idDiretor": 1
}
```

## Postman

A collection está em:

```text
postman/Catalogo Filmes API.postman_collection.json
```

Importe esse arquivo no Postman para testar a API.

## Banco de dados

O banco usado pela aplicação é:

catalogo_filmes

A URL de conexão local é:

jdbc:mysql://localhost:3306/catalogo_filmes

## Estrutura do projeto

- controller: recebe as requisições HTTP da API.
- service: concentra a lógica de cadastro, busca, atualização e exclusão.
- repository: faz a comunicação com o banco usando Spring Data JPA.
- model: representa a tabela filmes do banco de dados.
- database: contém o script SQL do banco.
- postman: contém a collection para testar os endpoints.
