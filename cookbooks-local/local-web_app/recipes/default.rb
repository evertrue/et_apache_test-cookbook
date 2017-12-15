#
# Cookbook:: local-web_app
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

web_app "local-web_app" do
  #template "local-web_app.conf.erb"
  server_name node['local-web_app']['virtualhost']
#  docroot node['local-web_app']['docroot']
  docroot "/var/www/html"
  cookbook "apache2"
  notifies :reload, "service[apache2]", :delayed
end
