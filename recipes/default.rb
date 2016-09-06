#
# Cookbook Name:: tm-php
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'windows'
include_recipe 'ark'
include_recipe "vcruntime::vc#{node['php'][ node['php']['version'] ]['vcredist_name']}"

ark node['php']['package_name'] do
  url node['php']['url']
  owner 'Administrator'
  version node['php']['version']
  win_install_dir "#{node['php']['install_dir']}"
  strip_components 0
  action :install
end

windows_path "#{node['php']['install_dir']}" do
  action :add
end

template "#{node['php']['install_dir']}\\php.ini" do
  source node['php']['php_ini_template']
  owner 'Administrator'

  variables(
    'error_log' => node['php']['php_error_log']
  )
end

