require 'spec_helper'

# Port 80 should be listening 
describe port(80) do
  it { should be_listening }
end

%w(apache2 php5).each do |pkg|
  describe package pkg do
    it { should be_installed }
  end
end

describe service 'apache2' do
  it { should be_enabled }
  it { should be_running }
end

describe file '/srv/www/testsample.com' do
  it { should exist }
  it { should be_directory }
end

describe file '/srv/www/testsample.com/php_info.php' do
  it { should be_file }
  it { should be_owned_by 'www-data' }
  it { should be_grouped_into 'www-data' }
end

describe file('/etc/alternatives/php') do 
  it { should exist }
  it { should be_owned_by 'root' }
end 

describe file('/usr/bin/php') do
  it { should be_symlink }
  it { should be_linked_to '/etc/alternatives/php' }
end
