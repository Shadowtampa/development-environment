FROM postgres:15-alpine

# Configurar variáveis de ambiente
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres

# Copiar scripts de inicialização
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Expor porta
EXPOSE 5432 