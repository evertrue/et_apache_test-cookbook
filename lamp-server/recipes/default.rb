#
# Cookbook:: lamp-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'apache2::default'
include_recipe 'php'
include_recipe 'apache2::mod_php'

file '/var/www/lamp.php' do	
 content '<?php phpinfo(); ?>'
 mode '0755'	
end

