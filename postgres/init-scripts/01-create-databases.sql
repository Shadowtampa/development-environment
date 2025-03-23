-- Criar usuário para desenvolvimento
CREATE USER root WITH PASSWORD 'root';

-- Criar banco de dados para o Laravel
CREATE DATABASE laravel_db;
GRANT ALL PRIVILEGES ON DATABASE laravel_db TO root;

-- Criar banco de dados para o NestJS
CREATE DATABASE nestjs_db;
GRANT ALL PRIVILEGES ON DATABASE nestjs_db TO root;

-- Alterar o proprietário dos bancos de dados
ALTER DATABASE laravel_db OWNER TO root;
ALTER DATABASE nestjs_db OWNER TO root; 