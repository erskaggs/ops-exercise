require 'spec_helper'

describe service('mysql') do
  it { should be_running }
end

describe port(3306) do
  it { should be_listening.on('127.0.0.1').with('tcp') }
end

describe port(2368) do
  it { should be_listening.on('127.0.0.1').with('tcp') }
end

describe service('nginx') do
  it { should be_running }
end

describe port(80) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end

describe user('eric') do
  it { should belong_to_group 'admin' }
end

describe command('sudo su - eric -c "sudo nginx -t"') do
  its(:stderr) { should match /nginx.conf test is successful/ }
end
