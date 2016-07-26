#
# Cookbook Name:: tm-php
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'tm-seven_zip'
include_recipe 'ark'

ark 'php-5.6.10-Win32-VC11-x86' do
  url 'http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x86.zip'
  version '2.13'
  owner 'administrator'
  win_install_dir 'c:\php'
  strip_components 0
  action :install
end
