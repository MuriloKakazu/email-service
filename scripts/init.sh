#!/usr/bin/env bash

service postfix start
service dovecot start
service apache2 start

echo "Hello $(whoami)"