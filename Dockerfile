FROM centos
RUN yum -y install httpd unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/moon.zip /var/www/html/
RUN cd /var/www/html/ && unzip moon.zip && mv /var/www/html/moon/* /var/www/html
CMD apachectl -DFOREGROUND
EXPOSE 80
