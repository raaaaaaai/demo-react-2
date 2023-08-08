cd /var/www/html
rm -rf node_modules package-lock.json
npm install
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
yum -y install nodejs npm
