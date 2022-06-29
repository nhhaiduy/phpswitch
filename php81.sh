#! /bin/bash
echo "PHP 8.1"

rm -f /usr/bin/php
ln -s /usr/local/lsws/lsphp81/bin/php /usr/bin/php
php -v