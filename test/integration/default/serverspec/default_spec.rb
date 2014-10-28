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
end