require 'spec_helper'

describe package('et_apache_test-cookbook') do 
	it { should be_installed }
end 


describe command('et_apache_test-cookbook --version') dp 
	its(:stdout) { should match /et_apache_test-cookbook 0.1.0/ }
end 

describe 'PHP config parameters' do 
	context php_config('default_mimetype') do 
		its(:value) { should eq 'text/html' }
	end 

	context php_config('session.cache_expire') do 
		its(:value) { should eq 180 }
	end 

	context php_config('mbstring.http_output_conv_mimetypes') do 
		its(:value) { should match /application/ }
	end
end