FROM mongo:6

# Configurar variáveis de ambiente
ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=root
ENV MONGO_INITDB_DATABASE=admin

# Copiar scripts de inicialização
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Expor porta
EXPOSE 27017 