#!/bin/bash

chown -R www-data:www-data /sites-enabled

exec /sbin/setuser www-data /usr/sbin/apache2ctl -D FOREGROUND
