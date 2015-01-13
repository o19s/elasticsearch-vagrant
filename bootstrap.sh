sudo apt-get update
sudo apt-get install wget openjdk-7-jdk -y
wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -

# Commands taken from
# http://www.elasticsearch.org/guide/en/elasticsearch/reference/current/setup-repositories.html
sudo add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main"
sudo apt-get update
sudo apt-get install elasticsearch
sudo update-rc.d elasticsearch defaults 95 10