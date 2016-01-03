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

