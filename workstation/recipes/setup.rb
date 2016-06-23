# package 'cowsay' do
#   action  :install
# end

package 'tree' do
  action  :install
end

package 'git' do
  action  :install
end

file '/etc/motd' do
  content 'Property of .....
  IPADDRESS: 10.91.181.7 
  HOSTNAME : ip-10-91-181-7
  MEMORY : 502272 kB
  CPU : 1799.999'
  mode '0644'
  owner 'root'
  group 'root'
end
