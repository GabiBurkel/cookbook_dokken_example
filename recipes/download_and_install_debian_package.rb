# example: download and install hello debian package

remote_file '/tmp/hello.deb' do
  source 'http://security.debian.org/debian-security/pool/updates/main/h/hello/hello_2.10-1+deb9u1_amd64.deb'
  checksum '7e0820b1ce6995b2467f1632ff450c1ef9a87d809e69f608d296a5aafd40ab23' # sha256
  action :create
  not_if { ::File.exist? '/usr/bin/hello' }
end

dpkg_package 'hello' do
  source '/tmp/hello.deb'
end
