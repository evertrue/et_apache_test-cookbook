name 'lamp_stack'
maintainer 'Kumar Gajapaka'
maintainer_email 'kumar.gajapaka@gmail.com'
license 'all_rights'
description 'Wrapper Cookbook for lamp_stack Cookbook'
long_description 'Wrapper Cookbook for lamp_stack Cookbook'
issues_url 'https://projects.gci.com/jira'
source_url 'http://source.gci.com/projects/CDCHEF/repos/gci_elk'
version '0.1.0'
chef_version '>= 12' if respond_to?(:chef_version)

depends 'apt', '~> 6.1'
depends 'apache2', '~> 3.1'
depends 'php', '~> 3.1'

%w(ubuntu).each { |os| supports os }
