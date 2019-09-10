#!/bin/sh

set -e

echo "***********************************"
echo "Creating Second Redis Installation."
echo "***********************************"
echo ""
echo ""


echo "Copying Configuration..."

sudo cp ./tests/travis/files/redis/redis-server2 /etc/init.d/redis-server2
sudo mkdir /etc/redis
sudo cp ./tests/travis/files/redis/redis-server2.conf /etc/redis/redis-server2.conf

echo "Creating Data Directory..."

sudo mkdir /var/lib/redis2
sudo chown $USER:$USER /var/lib/redis2


echo "Starting Second Service..."

sudo service redis-server2 start
sleep 3
echo "Finished setup of second redis server."
