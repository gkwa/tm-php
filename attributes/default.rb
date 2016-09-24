default['php']['syspath'] = true

default['php']['environment'] = "production" # "development" or "production"

default['php']['install_dir'] = "#{ENV['SystemDrive']}\\PHP"
default['php']['install_dir'] = "#{ENV['ProgramFiles']}\\PHP"
default['php']['extension_dir'] = "ext"

default['php']['package_name'] = 'PHP'
default['php']['version'] = '7.0.10'

default['php']['php_error_log'] = 'c:\Apache\logs\php_error.log'
default['php']['timezone'] = 'America/Los_Angeles'

default['php']['include_path']  = []
default['php']['include_path'] += [ '.' ]
default['php']['include_path'] += [ 'C:\Apache\htdocs\includes' ]
default['php']['include_path'] += [ 'C:\Apache\htdocs\includes\ls' ]
default['php']['include_path'] += [ 'C:\PHP\PEAR' ]

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

case node['kernel']['machine']
when 'i386', 'i586'
  default['php']['arch'] = 'x86'
else
  default['php']['arch'] = 'x86_64'
end

default['php']['x86']['5.4.26']['url']         = "http://installer-bin.streambox.com/php-5.4.26-nts-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.26']  = "php-5.4.26-nts-Win32-VC9"
default['php']['x86']['5.4.26']['checksum']    = "e62fc27943d0cdcf984859cc42848b479a814d594764124c0f6b32ba82dfa6ba"
default['php']['x86']['5.4.27']['url']         = "http://installer-bin.streambox.com/php-5.4.27-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.27']  = "php-5.4.27-Win32-VC9"
default['php']['x86']['5.4.27']['checksum']    = "eb328ca3a2add65704ed9a8e67e72b2bb432386eadb8a9ab36fbbda6f30976c2"
default['php']['x86']['5.4.27']['url']         = "http://installer-bin.streambox.com/php-5.4.27-nts-Win32-VC9-x86.zip"
default['php']['x86']['5.4.27']['checksum']    = "a8d2984b8b75614921a677e485e538b77e27b8ad4e873066a82fc4778a4d8e2b"
default['php']['x86']['5.4.28']['url']         = "http://installer-bin.streambox.com/php-5.4.28-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.28']  = "php-5.4.28-Win32-VC9"
default['php']['x86']['5.4.28']['checksum']    = "a98b7fb72c1f041fd3f187e7ddc57d32e068051a9d1df959ef4f5a8d47338179"
default['php']['x86']['5.4.28']['url']         = "http://installer-bin.streambox.com/php-5.4.28-nts-Win32-VC9-x86.zip"
default['php']['x86']['5.4.28']['checksum']    = "f1cb35d554136e048e891edf70331a92224423952965e9cf875780fdd0bff35b"
default['php']['x86']['5.4.32']['url']         = "http://installer-bin.streambox.com/php-5.4.32-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.32']  = "php-5.4.32-Win32-VC9"
default['php']['x86']['5.4.32']['checksum']    = "e1db30d1627cec38507f1a8253f6e9c4cada40f7ab7a3e8293d2ca47dd214ff1"
default['php']['x86']['5.4.34']['url']         = "http://installer-bin.streambox.com/php-5.4.34-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.34']  = "php-5.4.34-Win32-VC9"
default['php']['x86']['5.4.34']['checksum']    = "d3f1e71744963c8646be83f7d868ea3db74eb1804719f0279e3d917514244849"
default['php']['x86']['5.4.38']['url']         = "http://installer-bin.streambox.com/php-5.4.38-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.38']  = "php-5.4.38-Win32-VC9"
default['php']['x86']['5.4.38']['checksum']    = "61ca0b4e7c32b50e36290b248678a2f585870d32d84f57c4f508df256df48a8b"
default['php']['x86']['5.4.41']['url']         = "http://installer-bin.streambox.com/php-5.4.41-Win32-VC9-x86.zip"
default['php']['template_basename']['5.4.41']  = "php-5.4.41-Win32-VC9"
default['php']['x86']['5.4.41']['checksum']    = "324b1bf72f54d04b1b508b985127abebba98225412267215040a29c7878f2e65"
default['php']['x86_64']['5.5.11']['url']      = "http://installer-bin.streambox.com/php-5.5.11-Win32-VC11-x64.zip"
default['php']['template_basename']['5.5.11']  = "php-5.5.11-Win32-VC11"
default['php']['x86_64']['5.5.11']['checksum'] = "441c88d577dead7334b6b9625790193c73931fc0f717c8db02a881667c67527b"
default['php']['x86']['5.5.11']['url']         = "http://installer-bin.streambox.com/php-5.5.11-Win32-VC11-x86.zip"
default['php']['template_basename']['5.5.11']  = "php-5.5.11-Win32-VC11"
default['php']['x86']['5.5.11']['checksum']    = "c2ec8b329de6347a595debef25b0ef0d8603db3622236b29f2a25d60e35f0829"
default['php']['x86_64']['5.5.12']['url']      = "http://installer-bin.streambox.com/php-5.5.12-Win32-VC11-x64.zip"
default['php']['template_basename']['5.5.12']  = "php-5.5.12-Win32-VC11"
default['php']['x86_64']['5.5.12']['checksum'] = "8ad80a57b8f917d1942cf234f3468d163de0c08c7b769ee7880230e1bce867f3"
default['php']['x86']['5.5.12']['url']         = "http://installer-bin.streambox.com/php-5.5.12-Win32-VC11-x86.zip"
default['php']['x86']['5.5.12']['checksum']    = "2dcd6c4a2e924050d1e1bb1d57035ca78390ab29cdcc4639dd17ed7c43893483"
default['php']['x86_64']['5.5.8']['url']       = "http://installer-bin.streambox.com/php-5.5.8-Win32-VC11-x64.zip"
default['php']['template_basename']['5.5.8']   = "php-5.5.8-Win32-VC11"
default['php']['x86_64']['5.5.8']['checksum']  = "7f94eadde186a08b6549441b289f6747abdc18ee49b4a9c5ca18a7258f83ac25"
default['php']['x86']['5.5.8']['url']          = "http://installer-bin.streambox.com/php-5.5.8-Win32-VC11-x86.zip"
default['php']['x86']['5.5.8']['checksum']     = "0622e6b416f841b66e83796faf866cc3931adf41d3eeb2b6bbc4cd36bf40ae7c"
default['php']['x86_64']['5.6.0']['url']       = "http://installer-bin.streambox.com/php-5.6.0-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.0']   = "php-5.6.0-Win32-VC11"
default['php']['x86_64']['5.6.0']['checksum']  = "016f667977d9e96b7102a70a7694322d949367f9ec62e3416c4b192a855eec00"
default['php']['x86']['5.6.0']['url']          = "http://installer-bin.streambox.com/php-5.6.0-Win32-VC11-x86.zip"
default['php']['x86']['5.6.0']['checksum']     = "f6bcb6beb3bbafe8174e0aee388efb86c425e380ddcc18cbecb3e7d87e6e9d53"
default['php']['x86_64']['5.6.10']['url']      = "http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.10']  = "php-5.6.10-Win32-VC11"
default['php']['x86_64']['5.6.10']['checksum'] = "d5dcabcdc61a6e2f81d36c3e4ce26543b3f80c235d3bbd57932aeb4387197546"
default['php']['x86']['5.6.10']['url']         = "http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x86.zip"
default['php']['x86']['5.6.10']['checksum']    = "88cf0e5a05f7d5f1529c6ca27d569e7bdc0e85093c650e89f917206420e18045"
default['php']['x86_64']['5.6.2']['url']       = "http://installer-bin.streambox.com/php-5.6.2-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.2']   = "php-5.6.2-Win32-VC11"
default['php']['x86_64']['5.6.2']['checksum']  = "96b6b3720c9a9f6a8057b3767be84e20a86a18eeb57bac8cc5a48e1afc1cb375"
default['php']['x86']['5.6.2']['url']          = "http://installer-bin.streambox.com/php-5.6.2-Win32-VC11-x86.zip"
default['php']['x86']['5.6.2']['checksum']     = "3aad8a7f1b0041db982c2c8dd0cdf5aa7f12c3bb835f641faa25019ed9386aaf"
default['php']['x86_64']['5.6.6']['url']       = "http://installer-bin.streambox.com/php-5.6.6-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.6']   = "php-5.6.6-Win32-VC11"
default['php']['x86_64']['5.6.6']['checksum']  = "c14746fd1f9001f1065852670a0ee3e0a8e34379fdaaf245acd34b0bfb5ac200"
default['php']['x86']['5.6.6']['url']          = "http://installer-bin.streambox.com/php-5.6.6-Win32-VC11-x86.zip"
default['php']['x86']['5.6.6']['checksum']     = "c8607dca5b1ac2e059b3671abddd767f6722fe8dc81dd86a0530ad7446752254"
default['php']['x86_64']['5.6.8']['url']       = "http://installer-bin.streambox.com/php-5.6.8-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.8']   = "php-5.6.8-Win32-VC11"
default['php']['x86_64']['5.6.8']['checksum']  = "2ab68f65f83587b8b016d6b3a7a878dd0ebcceb7d50f61842831b7ae8390dadd"
default['php']['x86']['5.6.8']['url']          = "http://installer-bin.streambox.com/php-5.6.8-Win32-VC11-x86.zip"
default['php']['x86']['5.6.8']['checksum']     = "b9894c39c97f3490a2e8ea8828d6f6dac072d9f8888db3a01c966c5b0174addd"
default['php']['x86_64']['5.6.9']['url']       = "http://installer-bin.streambox.com/php-5.6.9-Win32-VC11-x64.zip"
default['php']['template_basename']['5.6.9']   = "php-5.6.9-Win32-VC11"
default['php']['x86_64']['5.6.9']['checksum']  = "75eeb39e432554f271f101530f4f35d4e70d8170dfb5ae47309da4a50cb7bfcb"
default['php']['x86']['5.6.9']['url']          = "http://installer-bin.streambox.com/php-5.6.9-Win32-VC11-x86.zip"
default['php']['x86']['5.6.9']['checksum']     = "fea2b99eb96055504f060da3c39d6ffdb40c743b691ac43f9a5214c2be12f998"
default['php']['x86_64']['7.0.8']['url']       = "http://installer-bin.streambox.com/php-7.0.8-Win32-VC14-x64.zip"
default['php']['template_basename']['7.0.8']   = "php-7.0.8-Win32-VC14"
default['php']['x86_64']['7.0.8']['checksum']  = "3007c33353a3333acec5bab869ab59aad44f22dff9d6f35908077641e8c6ff6c"
default['php']['x86']['7.0.8']['url']          = "http://installer-bin.streambox.com/php-7.0.8-Win32-VC14-x86.zip"
default['php']['x86']['7.0.8']['checksum']     = "7ec9a8a1b8b897f78fe1e6f619f780c13254c93b7b91a845901456f56c0da4bb"
default['php']['x86_64']['7.0.10']['url']      = "http://installer-bin.streambox.com/php-7.0.10-Win32-VC14-x64.zip"
default['php']['template_basename']['7.0.10']  = "php-7.0.10-Win32-VC14"
default['php']['x86_64']['7.0.10']['checksum'] = "5d099320d05e7a52ee28c95be23ee1839327d70937346ccf485c41a080c6d33f"
default['php']['x86']['7.0.10']['url']         = "http://installer-bin.streambox.com/php-7.0.10-Win32-VC14-x86.zip"
default['php']['x86']['7.0.10']['checksum']    = "1a25c404f2855d5b576169dd419fe74f58af9a26e50b15dfb18e30bb0b73d6fb"

# eg php-7.0.10-Win32-VC14-php.ini-production.erb
default['php']['php_ini_template'] = "#{node['php']['template_basename'][node['php']['version']]}-php.ini-#{node['php']['environment']}.erb"

php_version = node['php']['version']
arch = default['php']['arch']
vc_version = default['php'][arch][php_version]['url'].to_s.match(/.*VC(\d+)/i).captures[0].to_i

case vc_version
when 14
  default['php']['vc'] = "14"
when 11
  default['php']['vc'] = "12"
when 9
  default['php']['vc'] = "9"
end

Chef::Log.warn("Installing PHP #{node['php']['version']}, I'll use vc#{node['php']['vc']}")
