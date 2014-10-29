name             'et_apache_test'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures et_apache_test'
long_description 'Installs/Configures et_apache_test'
version          '0.1.0'

# https://github.com/opscode-cookbooks/apt
depends 'apt', '~> 2.4'

# https://github.com/opscode-cookbooks/php
depends 'php', '~> 1.5.0'

# https://github.com/viverae-cookbooks/apache2
depends 'apache2', '~> 2.0.0'
