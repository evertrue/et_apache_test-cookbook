#
# Cookbook Name:: et_apache_test-cookbook/
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2'

# disable default site
apache_site '000-default' do
  enable false
end