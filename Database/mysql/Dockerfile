FROM mysql:8.3

# Configurar variáveis de ambiente
ENV MYSQL_ALLOW_EMPTY_PASSWORD=no
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=database

# Copiar os scripts de inicialização personalizados
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

# Copiar configurações personalizadas do MySQL
COPY ./my.cnf /etc/mysql/conf.d/

# Expor porta
EXPOSE 3306

# Comandos a serem executados na inicialização (padrão do MySQL)
CMD ["mysqld"] 