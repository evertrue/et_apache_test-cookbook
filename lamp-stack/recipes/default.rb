#
# Cookbook:: lamp-stack
# Recipe:: default
#
# Copyright:: 2017, Manoj Kumar, All Rights Reserved.
include_recipe 'php'

include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5' #need this otherwise php won't serve on apache

directory "/srv/www/#{node['lamp-stack']['web_app']['name']}" do
  action :create
  recursive true 
end

cookbook_file "/srv/www/#{node['lamp-stack']['web_app']['name']}/index.php" do
source 'index.php'
 mode '0755'
  owner 'www-data'
  group 'www-data'
end
