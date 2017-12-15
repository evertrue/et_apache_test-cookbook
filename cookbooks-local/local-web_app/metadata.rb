
name 'local-web_app'
maintainer 'Nico Kadel-Garcia'
maintainer_email 'nkadel@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures local-web_app'
long_description 'Installs/Configures local-web_app'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# Update if code ever gets merged
issues_url 'https://github.com/nkadel/nkadel_et_apache_test-cookbook'
source_url 'https://github.com/nkadel/nkadel_et_apache_test-cookbook'

# List is somewhat tentative, not all test platforms available
supports 'amazon'
supports 'centos'
supports 'redhat'
supports 'debian'
supports 'fedora'
supports 'oracle'
supports 'scientific'
supports 'ubuntu'

# Used for web_app module and template
depends 'apache2'

