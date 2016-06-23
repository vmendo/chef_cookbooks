require 'spec_helper'

describe 'apache::default' do

  describe package('httpd') do
    it { should be_installed }
  end
  describe file('/var/www/html/index.html') do
    it { should be_file }
    it { should contain 'Hello World' }
  end
  describe service('httpd') do
    it {should be_enabled}
    it {should be_running}
  end
  describe command('curl localhost') do
    its(:stdout) { should match /Hello World/ }
  end
end
