# Use official PHP + Apache image
FROM php:8.2-apache

# Install mysqli for MySQL support
RUN docker-php-ext-install mysqli

# Copy project files into Apache web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80 (Apache default)
EXPOSE 80
