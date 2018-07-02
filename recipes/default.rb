puts('*******************************************')
puts('********** Hostname: ' + node['hostname'])
puts('********** I am supposed ot run with systemd! ')
puts('*******************************************')

unless Chef::Config['file_cache_path'].include?('kitchen')
  puts('We are not running in testkitchen')
end

include_recipe 'cookbook_dokken_example::download_and_install_debian_package'
