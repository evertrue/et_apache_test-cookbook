#
# Cookbook:: local-web_app
# Recipe:: default
#
# Copyright:: 2017, Nico Kadel-Garcia, Apache Licnse 2.0.

web_app "local-web_app" do
  server_name node['local-web_app']['virtualhost']
  server_aliases node['local-web_app']['server_aliases']
  docroot node['local-web_app']['docroot_dir']
  cookbook "apache2"
  notifies :reload, 'service[apache2]', :delayed
end

# Add to activate service, quited from apache2 cookbook
apache_service_name = node['apache']['service_name']

service 'apache2' do
  service_name apache_service_name
  supports [:start, :restart, :reload, :status]
  action [:enable, :start]
  only_if "#{node['apache']['binary']} -t", environment: { 'APACHE_LOG_DIR' => node['apache']['log_dir'] }, timeout: 10
end
