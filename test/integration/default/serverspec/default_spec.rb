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

    cmd = "#{node['php']['install_dir']}\\php.exe"
    v = "#{node['php']['version']}"

    describe command('cmd /c "#{cmd}" --version') do
      its(:stdout) { should match(/PHP #{v}/) }
      its(:exit_status) { should eq 0 }
    end

  # when 'darwin'
  #   describe command('/Applications/Firefox.app/Contents/MacOS/firefox -v') do
  #     its(:stdout) { should match(/Mozilla Firefox /) }
  #     its(:exit_status) { should eq 0 }
  #   end
  # when 'debian'
  #   describe command('iceweasel -v') do
  #     its(:stdout) { should match(/Mozilla Firefox /) }
  #     its(:exit_status) { should eq 0 }
  #   end
  # else # linux
  #   describe command('firefox -v') do
  #     its(:stdout) { should match(/Mozilla Firefox /) }
  #     its(:exit_status) { should eq 0 }
  #   end
  # end
end
