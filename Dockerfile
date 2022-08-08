FROM ubuntu:18.04
RUN apt update && apt -y upgrade
RUN apt install lsb-release ca-certificates apt-transport-https software-properties-common -y

RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y install dpkg
RUN apt-get install -y tzdata
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get install php8.1 -y

RUN apt-get install php8.1-mysql php8.1-curl php8.1-cgi php8.1-xsl php8.1-gd php8.1-zip php8.1-fpm php8.1-common php8.1-mbstring php8.1-xmlrpc -y

RUN apt -y install apache2

RUN service apache2 start

RUN apt-get -y install mysql-server

RUN service mysql start

RUN a2enmod php8.1

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

RUN ln -sf /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/

RUN a2enmod rewrite

COPY php.ini /usr/local/etc/php/

COPY /survey-api/ /var/www/survey-api/

#COPY composer.json /var/www/survey-api/

#COPY composer.lock /var/www/survey-api/

COPY survey.sql /var/www/

RUN a2ensite 000-default.conf

RUN service apache2 restart

RUN ls

WORKDIR /var/www/survey-api/

RUN chmod -R 777 /var/www/survey-api/storage

RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer

RUN composer update

CMD apachectl -D FOREGROUND

EXPOSE 80

#RUN php -r "readfile('http://getcomposer.org/installer');" | php -- --install-dir=/usr/bin/ --filename=composer \
#&& mkdir /run/php \
#&& apt-get -y autoremove \
#&& apt-get clean \
#&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#COPY COPY php.ini /usr/local/etc/php/
#COPY 000-default.conf /etc/apache/sites-available/000-default.conf
#COPY /survey-api /var/www/
#COPY survey.sql /var/www/
#RUN apt install mysql-server
#RUN systemctl start mysql.service
#COPY .hosts /etc/hosts
#RUN a2enmod rewrite
#RUN a2enmod mcrypt
#RUN service apache2 restart
#WORKDIR /var/www/survey-api/
#RUN a2ensite 3.86.194.61
#EXPOSE 80
