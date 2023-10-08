# Go Expert - Clean Architecture
Projeto baseado em arquitetura limpa e o emprego de APIs no formatos: Rest, GraphQL e gRPC

### Baixando as dependências
```
go mod tidy
```

### Subindo os servidores MySQL e RabbitMQ
```
make dep_up
```

### Criando a estrutura do banco de dados via migration
Na raiz do projeto execute o comando abaixo  
```
make migration_up
```

### Iniciando o servidor
Na raiz do projeto execute o comando abaixo
```
make run
```
### Testando API Rest
- O diretório `api` contém o script necessários para incluir novas ordens no banco de dados, assim como, listar todas as ordens.

### Testando API gRPC
- Os testes devem ser feito utilizando a ferramenta `evans`

### Testando API GraphQL
- Os testes devem ser feito a URL `http://localhost:8080`