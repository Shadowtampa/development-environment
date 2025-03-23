FROM php:8.2-fpm

# Instalar dependências
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Limpar cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalar extensões PHP
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Obter o Composer mais recente
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Criar diretório da aplicação
WORKDIR /var/www/html

# Configurar usuário não-root
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Alterar proprietário do diretório
RUN chown -R www:www /var/www

# Mudar para o usuário não-root
USER www

# Expor a porta 9000
EXPOSE 9000

# Iniciar o PHP-FPM
CMD ["php-fpm"] 