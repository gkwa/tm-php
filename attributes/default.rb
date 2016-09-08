default['php']['syspath'] = true

default['php']['environment'] = "production" # "development" or "production"

default['php']['install_dir'] = "#{ENV['SystemDrive']}\\PHP"
default['php']['install_dir'] = "#{ENV['PROGRAMFILES']}\\PHP"

default['php']['package_name'] = 'PHP'
default['php']['base_url'] = "http://installer-bin.streambox.com"
default['php']['version'] = '5.6.10'
default['php']['version'] = '7.0.10'

default['php']['php_error_log'] = 'c:\Apache\logs\php_error.log'

if default['php']['environment'] == "production"
  default['php']['short_open_tag'] = 'Off'
else
  default['php']['short_open_tag'] = 'Off'
end

default['php']['enabled_extensions'] = %w(
  php_mbstring.dll
  php_pdo_mysql.dll
  php_com_dotnet.dll
  php_openssl.dll
  php_curl.dll
  php_gd2.dll
  php_mysqli.dll
)

arch = 'x86'
if node['kernel']['machine'] == 'x86_64'
  arch = 'x64'
end

# php 5.6.2 uses vc11 - 2012
default['php']['5.6.10']['vcredist_name'] = '12'
default['php']['5.6.10']['vcredist_ver'] = '11'
default['php']['5.6.10']['vcredist_year'] = '12'
default['php']['5.6.10']['x64']['checksum'] = 'd5dcabcdc61a6e2f81d36c3e4ce26543b3f80c235d3bbd57932aeb4387197546'
default['php']['5.6.10']['x86']['checksum'] = '88cf0e5a05f7d5f1529c6ca27d569e7bdc0e85093c650e89f917206420e18045'

# php 7.0.10 uses vc14 - 2015
default['php']['7.0.10']['vcredist_name'] = '14'
default['php']['7.0.10']['vcredist_ver'] = '14'
default['php']['7.0.10']['vcredist_year'] = '15'
default['php']['7.0.10']['x64']['checksum'] = '5d099320d05e7a52ee28c95be23ee1839327d70937346ccf485c41a080c6d33f'
default['php']['7.0.10']['x86']['checksum'] = '1a25c404f2855d5b576169dd419fe74f58af9a26e50b15dfb18e30bb0b73d6fb'

basename = "php-#{default['php']['version']}-Win32-VC#{default['php'][default['php']['version']]['vcredist_name']}-#{arch}"
zip = "#{basename}.zip"
default['php']['url'] = "#{default['php']['base_url']}/#{zip}"

if node['php']['environment'] == "development"
  default['php']['php_ini_template'] = "#{basename}-php.ini-development.erb"
else
  default['php']['php_ini_template'] = "#{basename}-php.ini-production.erb"
end
