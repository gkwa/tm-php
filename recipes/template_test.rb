php_ini_path=File.join("#{node['php']['install_dir']}", 'php.ini')

template "#{php_ini_path}" do
  source node['php']['php_ini_template']
end
