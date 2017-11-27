#
# Cookbook:: lamp_stack
# Recipe:: default
#
# Copyright:: 2017, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'php::default'

include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5'

directory "/srv/www/#{node[cookbook_name]['webapp_name']}" do
  recursive true
  action :create
end

file "/srv/www/#{node[cookbook_name]['webapp_name']}/php_info.php" do
  content <<-EOF
    <html>This is php info page.</html>
    <?php phpinfo(); ?> 
    EOF
  mode '0755'
  owner node['apache']['user']
  group node['apache']['group']
end

web_app node[cookbook_name]['webapp_name'] do
  server_name node['hostname']
  server_aliases [node['fqdn'], node['lamp_stack']['webapp_name']]
  docroot "/srv/www/#{node['lamp_stack']['webapp_name']}"
  cookbook 'apache2'

  notifies :restart, "service[apache2]", :delayed
end
