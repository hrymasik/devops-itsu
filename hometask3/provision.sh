sudo find / -type l

sed -n '/^Character/, /^$/ { /^$/ !p }' /proc/devices
sed -n '/^Block/, /^$/ { /^$/ !p }' /proc/devices

sudo ln -sf tmp/file /etc/hostname

sudo useradd testuser
sudo touch /home/testuser_data && sudo chown testuser:testuser /home/testuser_data