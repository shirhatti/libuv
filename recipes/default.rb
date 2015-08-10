include_recipe 'build-essential'
include_recipe 'git'

installation_dir = '/usr/local/src/libuv-1.4.2'

directory installation_dir do
  owner 'root'
  group 'root'
  mode '0777'
  action :create
end

git 'libuv' do
  repository 'https://github.com/libuv/libuv.git'
  revision 'v1.4.2'
  destination installation_dir
  action :sync
end

package 'libtool'
package 'automake'

bash 'build-libuv' do
  cwd installation_dir
  code <<-EOH
    sudo sh autogen.sh
    sudo ./configure 
    sudo make 
    sudo make install 
    sudo ldconfig 
  EOH
end

directory installation_dir do
  recursive true
  action :delete
end