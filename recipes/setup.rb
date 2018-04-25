package 'ntp' do
	action :install
end

package 'tree' do 
	action :install
end

package 'git' do
	action :install
end

file '/etc/motd' do
	content 'This computer is the property of Anand'
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start]
end
