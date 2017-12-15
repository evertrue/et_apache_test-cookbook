#
# Cookbook:: local-web_app
# Attributes:: default
#

# Use system hostname by default
default['local-web_app']['virtualhost'] = node['hostname']
#default['local-web_app']['serveradmin'] = node['hostname']
default['local-web_app']['serveradmin'] = "webmaster@localhost"
#default['local-web_app']['serveradmin'] = "webmaster@#{node['hostname']}"

default['local-web_app']['servername'] = node['hostname']
default['local-web_app']['serveraliases'] = [ "localhost", "localhost.localdomain" ]
default['local-web_app']['docroot'] = node['apache2']['docroot_dir']
#default['local-web_app']['docroot'] = "/var/www/#{node['local_web-app]]['virtualhost']}"





