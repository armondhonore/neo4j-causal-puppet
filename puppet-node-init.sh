# needed because I don’t have an DNS - FQDN
vi /etc/hosts
45.55.52.59 pemaster

curl -k https://pemaster:8140/packages/current/install.bash | sudo bash

mkdir -p /var/log/neo4j/
mkdir -p /var/run/neo4j/

