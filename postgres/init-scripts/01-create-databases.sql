-- Criar usuário para desenvolvimento
CREATE USER dev WITH PASSWORD 'dev_password';

-- Criar banco de dados para o Laravel
CREATE DATABASE laravel_db;
GRANT ALL PRIVILEGES ON DATABASE laravel_db TO dev;

-- Criar banco de dados para o NestJS
CREATE DATABASE nestjs_db;
GRANT ALL PRIVILEGES ON DATABASE nestjs_db TO dev;

-- Alterar o proprietário dos bancos de dados
ALTER DATABASE laravel_db OWNER TO dev;
ALTER DATABASE nestjs_db OWNER TO dev; 