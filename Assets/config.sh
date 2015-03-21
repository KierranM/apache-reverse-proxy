#!/bin/bash

SITES_ENABLED="/sites-enabled"

# if the default
if [[ ! -f $SIATES_ENABLED/000-default.conf ]]; then
  cp -a /etc/apache2/sites-enabled/000-default.conf /sites-enabled
fi

rm -rf /etc/apache2/sites-enabled
ln -s /sites-enabled /etc/apache2/sites-enabled