require 'serverspec'

# Required by serverspec
set :backend, :exec

# Generic Apache Server Tests
describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

# ensure that apache2 is installed and running
describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

# ensure port 80 is open and listening
describe port(80) do
  it { should be_listening }
end

# Note that these are dependent on node attributes which 
# I can't seem to access in this test file
describe file("/srv/www/test-site.evertrue.com/index.html") do
  it { should be_file }
end

describe file("/srv/www/test-site.evertrue.com/") do
  it { should be_directory }
end

# Ensure that PHP is installed
describe package('php5'), :if => os[:family] == 'ubuntu' do
 it { should be_installed }
end

# Some Example PHP ini configuration variables
describe 'PHP config parameters' do
 context  php_config('default_mimetype') do
   its(:value) { should eq 'text/html' }
 end

 context php_config('session.cache_expire') do
   its(:value) { should eq 180 }
 end
end
