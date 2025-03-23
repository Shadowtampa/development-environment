// Conectar ao banco de dados admin
db = db.getSiblingDB('admin');

// Criar usuário de desenvolvimento
db.createUser({
  user: 'dev',
  pwd: 'dev_password',
  roles: [{ role: 'readWriteAnyDatabase', db: 'admin' }]
});

// Criar banco para Laravel
db = db.getSiblingDB('laravel_db');
db.createCollection('users');

// Criar banco para NestJS
db = db.getSiblingDB('nestjs_db');
db.createCollection('users'); 