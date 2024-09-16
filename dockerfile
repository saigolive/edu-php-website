FROM devopsedu/webapp
RUN yum update && \
    yum install -y php php-cli php-fpm php-mysql
COPY projCert /var/www/html
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
CMD ["sh", "-c", "php-fpm && nginx -g 'daemon off;'"]
