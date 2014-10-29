#
# Cookbook Name:: et_apache_test
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

# Ensure apt is happy before proceeding
# specifically 'apt-get update' needs to be run
include_recipe 'apt'

# Install PHP
include_recipe 'php'

# Install Apache
include_recipe 'apache2'
include_recipe "apache2::mod_php5" 

# default site: disable
apache_site '000-default' do
  enable false
  notifies :restart, "service[apache2]", :delayed
end   

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
  notifies :restart, "service[apache2]", :delayed
end


