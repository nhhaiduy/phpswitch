#! /bin/bash
echo "PHP 8.0"

rm -f /usr/bin/php
ln -s /usr/local/lsws/lsphp80/bin/php /usr/bin/php
php -v