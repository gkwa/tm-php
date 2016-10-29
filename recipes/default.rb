#
# Cookbook Name:: tm-php
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'seven_zip'
include_recipe 'windows'
include_recipe "vcruntime::vc#{node['php']['vc']}"

seven_zip_archive node['php']['package_name'] do
  path node['php']['install_dir']
  source node['php'][node['php']['arch']][node['php']['version']]['url']
  Chef::Log.debug("download url #{node['php'][node['php']['arch']][node['php']['version']]['url']}")
  checksum node['php']['checksum']
  timeout 30
  overwrite true
  not_if "\"#{node['php']['install_dir']}\\php.exe\" --version | findstr #{node['php']['version']}"
  Chef::Log.debug("installing version #{node['php']['version']}")
end

windows_path "#{node['php']['install_dir']}" do
  action :add
end

php_ini_path=File.join("#{node['php']['install_dir']}", 'php.ini')

template "#{php_ini_path}" do
  source node['php']['php_ini_template']
end
