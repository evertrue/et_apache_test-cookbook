# Deploy in /var/chef-solo, and link to /etc/chef-solo.rb
# for chef-solo to work by default
cookbook_path	'/var/chef-solo/berks-cookbooks'
role_path	'/var/chef-solo/roles'
data_bag_path	'/var/chef-solo/data_bags'
environment_path	'/var/chef-solo/environments'
# Deploy via separate channel, do not keep in git repo
encrypted_data_bag_secret	'/etc/chef/encrypted_data_bag_secret'
