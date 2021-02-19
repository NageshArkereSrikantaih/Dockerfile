FROM centos:7
MAINTAINER NAGESH ARKERE SRIKANTAIAH
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/jackpiro.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jackpiro.zip
RUN cp -rvf jackpiro/* .
RUN rm -rf jackpiro.*
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
