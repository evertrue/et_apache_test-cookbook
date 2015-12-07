#
# Cookbook Name:: et_apache_test
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'apache2::default'
include_recipe 'apache2::mod_rewrite'
include_recipe 'apache2::mod_deflate'
include_recipe 'apache2::mod_headers'

# disable default site
apache_site '000-default' do
  enable false
end

# Set up own virtual host 
web_app "my_app" do
	template 'et_apache_test-cookbook.erb'
	server_name node['et_apache_test-cookbook']['hostname']
end

# enable php
apache_module "php5" do 
	filename "libphp5.so"
end

