#
# Cookbook:: et_LAP
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5'
web_app 'evertrue_app' do
  server_name node['et_LAP']['hostname']
  docroot node['et_LAP']['document_root']
  template 'evertrue_app.conf.erb'
end
service 'apache' do
  action :restart
end
