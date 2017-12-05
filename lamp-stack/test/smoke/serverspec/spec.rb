require 'serverspec'

set :backend, :exec

describe os[:family] do
it { should eq "ubuntu" }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

describe package('php5'), :if => os[:family] == 'ubuntu' do
 it { should be_installed }
end
