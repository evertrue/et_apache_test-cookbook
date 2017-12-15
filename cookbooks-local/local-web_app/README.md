Description
===========

Use local wrapper cookbook for web_app depoyment of VirtualHost with apache2 cookbook.

Cookbooks
=========

Requires `apache2` cookbook

Recipe
======

default
-------

Activate a web_app called "local-web_app" using the apache2 cookbook.


Configuration
-------------

# Use system hostname by default
default['local-web_app']['virtualhost'] = node['hostname']
#default['local-web_app']['serveradmin'] = node['hostname']
default['local-web_app']['serveradmin'] = "webmaster@#{node['hostname']}"
#default['local-web_app']['serveradmin'] = "webmaster@localhost"

default['local-web_app']['servername'] = node['hostname']
default['local-web_app']['serveraliases'] = [ "localhost", "localhost.localdomain" ]
default['local-web_app']['docroot'] = node['apache2']['docroot_dir']
#default['local-web_app']['docroot'] = "/var/www/#{node['local_web-app]]['virtualhost']}"







License and Author
==================

Author: Nico KAdel-Garcia (<nkadel@gmail.com>)

Copyright: 2017 Nico Kadel-Garcia (<nkadel@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.



