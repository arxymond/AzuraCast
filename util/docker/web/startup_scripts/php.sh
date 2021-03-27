#!/bin/bash

# Copy the php.ini template to its destination.
dockerize -template "/etc/php/8.0/fpm/05-azuracast.ini.tmpl:/etc/php/8.0/fpm/conf.d/05-azuracast.ini" \
  -template "/etc/php/8.0/fpm/www.conf.tmpl:/etc/php/8.0/fpm/pool.d/www.conf"

cp /etc/php/8.0/fpm/conf.d/05-azuracast.ini /etc/php/8.0/cli/conf.d/05-azuracast.ini
