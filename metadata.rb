name "apache2"
version "0.1.0"
depends 'apache2', '~> 3.1'

# Disable the default virtual host using only attributes 
# provided by the `apache2` cookbook (no recipe code)
# apache_config 'a2ensite' do 
# 	enable false
# end







