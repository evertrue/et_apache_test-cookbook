#
# Cookbook:: local-web_app
# Attributes:: default
#

# Use system hostname by default
default['local-web_app']['virtualhost'] = node['fqdn']
#default['local-web_app']['virtualhost'] = node['hostname']
default['local-web_app']['serveradmin'] = "webmaster@#{name['fqdn']}"

default['local-web_app']['serveraliases'] = [ node['hostname'], "localhost", "localhost.localdomain" ]

default['local-web_app']['docroot_dir'] = "/var/www/html"
#default['local-web_app']['docroot_dir'] = node['apache2']['docroot_dir']
#default['local-web_app']['docroot_dir'] = "/var/www/#{node['local_web-app]]['virtualhost']}"





