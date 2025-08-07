FROM node:18 as build

# Criar diretório da aplicação
WORKDIR /app

# Copiar arquivos de configuração do pacote
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o código-fonte da aplicação
COPY . .

# Construir a aplicação
RUN npm run build --prod

# Segunda etapa - configurando nginx para servir a aplicação
FROM nginx:alpine

# Copiar os arquivos da build para o diretório do nginx
COPY --from=build /app/dist/*/. /usr/share/nginx/html/

# Configuração para rotas de SPA
RUN echo 'server { \
    listen 80; \
    server_name _; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Expor porta 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"] 