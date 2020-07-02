sudo apt-get install wordpress -y
sudo apt-get install mysql-server -y

sudo mysql

sudo mysql -e "CREATE USER 'test'@'localhost' IDENTIFIED BY '';"
sudo myswl -e "GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost';"
exit 0
