sudo yum update httpd
sudo yum install httpd -y

# systemctl enable firewalld
# systemctl start firewalld
# sudo firewall-cmd --permanent --add-service=http
# sudo firewall-cmd --permanent --add-service=https
# sudo firewall-cmd --reload

sudo systemctl start httpd
sudo systemctl status httpd

# sudo mkdir /var/www/html/hrymasik/
# sudo mv /vagrant/index.html /var/www/html/hrymasik/
# sudo chown apache:apache -R /var/www/html/hrymasik/

# sudo mkdir /etc/httpd/sites-available
# sudo mkdir /etc/httpd/sites-enabled

# sudo cat /vagrant/helper.txt >> /etc/httpd/conf/httpd.conf

# sudo mv /vagrant/hrymasik.com.conf /etc/httpd/sites-available/

# sudo ln -s /etc/httpd/sites-available/hrymasik.com.conf /etc/httpd/sites-enabled/hrymasik.com.conf

# sudo setenforce 0

# sudo service httpd restart

sudo mkdir -p /var/www/hrymasik.com/html
sudo mv /vagrant/index.html /var/www/hrymasik.com/html/
sudo mv /vagrant/hrymasik.com.conf /etc/httpd/conf.d/
sudo cat /vagrant/helper.txt >> /etc/httpd/conf/httpd.conf
sudo setenforce 0
sudo systemctl restart httpd
