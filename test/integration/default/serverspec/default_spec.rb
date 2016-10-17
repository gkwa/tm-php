require 'spec_helper'

# Required by serverspec
if (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM).nil?
  set :backend, :exec
else
  set :backend, :cmd
  set :os, family: 'windows'
end

describe 'tm-php::default' do
  case os[:family]
  when 'windows'
  describe command('cmd /c php --version') do
    its(:stdout) { should match(/PHP 7.0.10/) }
    its(:stdout) { should_not match(/PHP 7.0.11/) }
    its(:stdout) { should_not match(/dammit not working 7.0.10/) }
    its(:stdout) { should match(/taylor/) }
    its(:exit_status) { should eq 0 }
  end
  end
end
