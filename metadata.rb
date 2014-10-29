name             'et_apache_test'
maintainer       'EverTrue and Eddie Hurtig'
maintainer_email 'hurtige@ccs.neu.edu'
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
