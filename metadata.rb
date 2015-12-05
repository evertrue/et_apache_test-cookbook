
name             'etapachetest'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures etapachetest'
long_description 'Installs/Configures etapachetest'
version          '0.1.0'
depends 		 'apache2', '~> 3.1'

# Disable the default virtual host using only attributes 
# provided by the `apache2` cookbook (no recipe code)
 
# apache_config 'a2dissite' do 
# 	enable false
# end








