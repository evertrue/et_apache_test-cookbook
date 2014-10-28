#
# Cookbook Name:: et_apache_test
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install the PHP5 Package
package 'php5'

# Install Apache
include_recipe 'apache2'

# default site: disable
apache_site '000-default' do
  enable false
end   

# enable php5 module
apache_module "php5"

# Create Document Root for new Web App
directory "/srv/www/#{node['et_apache_test']['web_app']['name']}" do
  action :create
  recursive true
end

cookbook_file "/srv/www/#{node['et_apache_test']['web_app']['name']}/index.php" do
  mode '0644'
  owner 'www-data'
  group 'www-data'
end

# Create Web App
web_app node['et_apache_test']['web_app']['name'] do
  server_name node['hostname']
  server_aliases [node['fqdn'], node['et_apache_test']['web_app']['name']]
  docroot "/srv/www/#{node['et_apache_test']['web_app']['name']}"
end