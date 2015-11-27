FROM hub.alterway.fr/composer:1.0.0-alpha10-5.6

RUN apt-get update && apt-get install -y mysql-client \
    && /usr/local/bin/composer.phar global require drush/drush:6.5 --prefer-dist \
    && ln -sf /root/.composer/vendor/bin/drush.php /usr/local/bin/drush

WORKDIR /var/www



