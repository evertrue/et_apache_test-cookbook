#
# Cookbook:: lamp-stack
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'php'

include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5' #need this otherwise php won't serve on apache
