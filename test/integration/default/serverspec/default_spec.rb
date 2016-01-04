require 'serverspec'

set :backend, :exec

describe os[:family] do
	it { should eq "ubuntu" }
end

describe os[:release] do
	it { should eq "14.04" }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe package('php5'), :if => os[:family] == 'ubuntu' do
 it { should be_installed }
end

describe file('/usr/lib/apache2/modules/libphp5.so') do 
  it { should be_file }
  it { should be_owned_by 'root' }
end

describe file('/usr/bin/php') do 
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_executable.by_user('www-data') }
end
