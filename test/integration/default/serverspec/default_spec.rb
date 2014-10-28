require 'serverspec'

# Required by serverspec
set :backend, :exec

# Generic Apache Server Tests
describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end# Ensure that PHP is installed
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
