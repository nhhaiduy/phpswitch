# phpswitch
// Cap nhat ngay 25/02/2022. Them sqlsrv cho cyberpanel 7.4 8.0 8.1
curl -s https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo bash -c "curl -s https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list"
sudo apt update
sudo ACCEPT_EULA=Y apt -y install msodbcsql17 mssql-tools
sudo apt -y install unixodbc-dev
sudo apt -y install gcc g++ make autoconf libc-dev pkg-config

Download https://github.com/microsoft/msphpsql/releases Xem phien ban Linux 
https://github.com/microsoft/msphpsql/releases/download/v5.10.0/Ubuntu2004-8.1.tar
https://github.com/microsoft/msphpsql/releases/download/v5.10.0/Ubuntu2004-8.0.tar
https://github.com/microsoft/msphpsql/releases/download/v5.10.0/Ubuntu2004-7.4.tar

Copy file php_pdo_sqlsrv_81_nts.so php_sqlsrv_81_nts.so vao
php7.4 -> /usr/local/lsws/lsphp74/lib/php/20190902/
php8.0 ->/usr/local/lsws/lsphp80/lib/php/20200930/
php8.1 ->/usr/local/lsws/lsphp81/lib/php/20210902/
Them vao o cuoi php.ini
extension=php_sqlsrv_81_nts.so
extension=php_pdo_sqlsrv_81_nts.so

//Doi php CyberPanel
rm -f /usr/bin/php
ln -s /usr/local/lsws/lsphp74/bin/php /usr/bin/php


//Fastpanel
php8.1 -> /opt/php81/lib/php/extensions/no-debug-non-zts-20210902
cp sqlsrv81.ini /opt/php81/conf.d

/usr/lib/php/20190902/
cp sqlsrv74.ini /etc/php/7.4/fpm/conf.d
cp sqlsrv74.ini /etc/php/7.4/apache2/conf.d
thay
trong site->manual setting->backend
php_admin_value[extension] = "php_sqlsrv_81_nts.so"
php_admin_value[extension] = "php_pdo_sqlsrv_81_nts.so"
