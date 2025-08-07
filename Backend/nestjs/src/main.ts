import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  
  // Configurar prefixo global para API
  app.setGlobalPrefix('api/v1');
  
  // Permitir conexões de qualquer origem (desenvolvimento)
  app.enableCors();
  
  await app.listen(process.env.PORT ?? 3000, '0.0.0.0');
} 
bootstrap();
