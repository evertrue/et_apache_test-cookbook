#
# Cookbook Name:: et_apache_test
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'

# default site: disable
apache_site '000-default' do
  enable false
end   

# enable php5 module
apache_module "php5"

