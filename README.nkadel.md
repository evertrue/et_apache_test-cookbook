From Nico Kadel-Garcia <nkadel@gtmail.com>:

As a matter of policy, with new setups, I try to log all steps so that
others can report the procedures.

* Clone https://github.com/evertrue/et_apache_test-cookbook to
  personal github repo at /var/chef-solo/
* Create personal branch, create pull request
* Create chef-solo config in "solo.rb"
* Create chef-client config in "client.rb", symlinked to "solo.rb", to provide
  working second config file for chef-solo. Typical format below.

  * * for chef-solo to work by default
  * cookbook_path	'/var/chef-solo/berks-cookbooks'
  * role_path	'/var/chef-solo/roles'
  * data_bag_path	'/var/chef-solo/data_bags'
  * environment_path	'/var/chef-solo/environments'
  * * Deploy via separate channel, do not keep in git repo
  * encrypted_data_bag_secret	'/etc/chef/encrypted_data_bag_secret'

* Create node configuration templates under nodes-local/

* nodes-local/$HOSTNAME.json	for node specific config
* nodes-local/[template].json.tmpl	 for templates based on hostname
* nodes-local/default.json.tmpl	 for default template


