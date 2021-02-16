FROM centos
RUN yum -y install httpd unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/darkness.zip /var/www/html/
RUN cd /var/www/html/ && unzip darkness.zip && mv /var/www/html/darkness/* /var/www/html
CMD apachectl -DFOREGROUND
EXPOSE 80
