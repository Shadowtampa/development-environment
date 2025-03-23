-- Criar usuário de desenvolvimento
CREATE USER IF NOT EXISTS 'root'@'%' IDENTIFIED BY 'root';

-- Conceder privilégios
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';

-- Criar banco de dados para Laravel
-- CREATE DATABASE IF NOT EXISTS laravel_db;
-- GRANT ALL PRIVILEGES ON laravel_db.* TO 'dev'@'%';

-- Criar banco de dados para NestJS
CREATE DATABASE IF NOT EXISTS nestjs_db;
GRANT ALL PRIVILEGES ON nestjs_db.* TO 'dev'@'%';

-- Aplicar alterações
FLUSH PRIVILEGES; 