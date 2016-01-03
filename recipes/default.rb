#
# Cookbook Name:: et_apache_test
# Recipe:: default
#
# Copyright (C) 2016 Kyle Ryan
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'php'

include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5' #need this otherwise php won't serve on apache

directory "/srv/www/#{node['et_apache_test']['web_app']['name']}" do
  action :create
  recursive true #need this to create www in srv as well
end

cookbook_file "/srv/www/#{node['et_apache_test']['web_app']['name']}/index.php" do
	source 'index.php'
 	mode '0755'
  owner 'www-data'
  group 'www-data'
end