# 🚀 DevEnvironment - Ambiente de Desenvolvimento Completo

Este projeto oferece um ambiente de desenvolvimento completo e pronto para uso (out of the box) com várias tecnologias populares configuradas e prontas para serem utilizadas.

## 🎯 Objetivo

Servir como modelo base para ser forkeado em projetos futuros, proporcionando um ambiente de desenvolvimento configurado e padronizado, economizando tempo de setup em novos projetos.

## 🛠 Tecnologias Disponíveis
- Frontend: 
- ⚛️ **React** - Biblioteca JavaScript para interfaces

- Backend: 
- 🦁 **NestJS** - Framework Node.js para backend
- Aspnet

- Databases
- 🐘 **PostgreSQL** - Banco de dados relacional avançado

## 📋 Portas dos Serviços

| Serviço     | Porta | URL de acesso                |
|-------------|-------|------------------------------|
| Laravel     | 8000  | http://localhost:8000        |
| React       | 3000  | http://localhost:3000        |
| NestJS      | 3001  | http://localhost:3001/api/v1 |
| Angular     | 4200  | http://localhost:4200        |
| MySQL       | 3306  | localhost:3306               |
| PostgreSQL  | 5432  | localhost:5432               |
| MongoDB     | 27017 | localhost:27017              |
| Redis       | 6379  | localhost:6379               |

## 🚦 Como Usar

### Iniciando o ambiente completo

```bash
docker-compose up -d
```

### Iniciando serviços específicos

```bash
docker-compose up -d <serviço1> <serviço2> ...
```

Exemplo:
```bash
docker-compose up -d laravel mysql nginx
```

### Parando os serviços

```bash
docker-compose down
```

### Visualizando logs

```bash
docker-compose logs <serviço>
```

## 🔐 Credenciais de Banco de Dados

### MySQL
- Host: mysql
- Porta: 3306
- Usuário: root
- Senha: root
- Bancos: laravel_db, nestjs_db

### PostgreSQL
- Host: postgres
- Porta: 5432
- Usuário: root
- Senha: root
- Bancos: laravel_db, nestjs_db

### MongoDB
- Host: mongodb
- Porta: 27017
- Usuário: dev
- Senha: dev_password
- Bancos: laravel_db, nestjs_db

## 📂 Estrutura do Projeto

```
.
├── angular/           # Projeto Angular 
├── laravel/           # Projeto Laravel
├── mongodb/           # Configuração MongoDB
├── mysql/             # Configuração MySQL
├── nestjs/            # Projeto NestJS
├── nginx/             # Configuração Nginx
├── postgres/          # Configuração PostgreSQL
├── reactjs/           # Projeto React
└── docker-compose.yaml # Configuração de serviços
```

## 🔄 Workflow sugerido para novos projetos

1. Faça um fork deste repositório
2. Clone o fork para sua máquina
3. Ative apenas os serviços que precisar
4. Comece a desenvolver seu projeto

## 🛑 Solução de Problemas

### Problemas com Portas
Se alguma porta já estiver em uso, modifique o `docker-compose.yaml` alterando o mapeamento de porta.

### Problemas de Conexão com Banco de Dados
- Verifique as credenciais no arquivo de configuração do projeto
- O host deve ser o nome do serviço no docker-compose (mysql, postgres, mongodb)
- Verifique os logs para erros específicos

## 📝 Customização

Para customizar os serviços, edite os Dockerfiles correspondentes e reconstrua os contêineres:

```bash
docker-compose build <serviço>
docker-compose up -d <serviço>
``` 