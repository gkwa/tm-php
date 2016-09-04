#
# Cookbook Name:: tm-php
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'ark'
include_recipe 'vcruntime::vc12'

ark "PHP" do
  url 'http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x86.zip'
  owner 'administrator'
  version '2.13'
  win_install_dir 'c:\php'
  strip_components 0
  action :install
end
