wget https://pm.puppetlabs.com/puppet-enterprise/2016.4.3/puppet-enterprise-2016.4.3-ubuntu-16.04-amd64.tar.gz

tar dxf puppet-enterprise-2016.4.3-ubuntu-16.04-amd64.tar.gz

echo ‘{
  "console_admin_password": "admin123",
  "puppet_enterprise::puppet_master_host": "pemaster",
  "pe_install::puppet_master_dnsaltnames": [
    "puppet"
  ]
}’ > answefile

./puppet-enterprise-installer -c answefile

puppet module install mlambrichs-neo4j --version 2.0.0
puppet module install puppetlabs-java --version 1.6.0


