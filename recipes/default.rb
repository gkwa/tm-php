#
# Cookbook Name:: tm-php
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'windows'
include_recipe 'ark'
include_recipe "vcruntime::vc#{node['php'][ node['php']['version'] ]['vcredist_year']}"

ark node['php']['package_name'] do
  url node['php']['url']
  owner 'Administrator'
  version node['php']['version']
  win_install_dir 'c:\php'
  strip_components 0
  action :install
end

windows_path 'C:\php' do
  action :add
end
