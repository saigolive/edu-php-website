FROM devopsedu/webapp
WORKDIR /var/www/html
COPY projCert /var/www/html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
CMD ["sh", "-c", "php-fpm && nginx -g 'daemon off;'"]
