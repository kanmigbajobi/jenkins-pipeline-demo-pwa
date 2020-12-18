FROM nginx:1.15.0-alpine
RUN yum -y install httpd
COPY index.html /var/www/html/
ENTRYPOINT [ "/usr/sbin/httpd" ]
CMD  [ "-D", "FOREGROUND" ]
EXPOSE 80
