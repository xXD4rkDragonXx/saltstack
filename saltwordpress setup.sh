{% for admin in pillar.get('wordpress', {}).items() %}

sudo apt-get install wordpress -y
sudo apt-get install mysql-server -y


sudo mysql -e "CREATE USER '{{ admin['username'] }}'@'localhost' IDENTIFIED BY '{{ admin['password'] }}'"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '{{ admin['username'] }}'@'localhost'"

{% endfor %}