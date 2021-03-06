sudo apt-get update
sudo apt-get install wget openjdk-7-jdk -y
wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

# Install python tools
sudo apt-get install build-essential autoconf flex bison libtool python-dev -y

# Commands taken from
# http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html
wget https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.0.1/elasticsearch-2.0.1.deb
sudo dpkg -i elasticsearch-2.0.1.deb
sudo sed -i  '/network.host:/a network.bind_host: _non_loopback_' /etc/elasticsearch/elasticsearch.yml
sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start
