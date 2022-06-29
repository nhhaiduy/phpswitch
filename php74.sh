#! /bin/bash
echo "PHP 7.4"

rm -f /usr/bin/php
ln -s /usr/local/lsws/lsphp74/bin/php /usr/bin/php
php -v
php time.php