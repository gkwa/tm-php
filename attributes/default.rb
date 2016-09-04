default['php']['syspath'] = true

default['php']['version'] = '5.6.10'
if node['kernel']['machine'] == 'x86_64'
  default['php']['url'] = "http://installer-bin.streambox.com/php-%{default['php']['version']}-Win32-VC11-x64.zip"
  default['php']['checksum'] = 'd5dcabcdc61a6e2f81d36c3e4ce26543b3f80c235d3bbd57932aeb4387197546'
  default['php']['package_name'] = 'PHP'
else
  default['php']['url'] = "http://installer-bin.streambox.com/php-%{default['php']['version']}-Win32-VC11-x86.zip"
  default['php']['checksum'] = '88cf0e5a05f7d5f1529c6ca27d569e7bdc0e85093c650e89f917206420e18045'
  default['php']['package_name'] = 'PHP'
end
