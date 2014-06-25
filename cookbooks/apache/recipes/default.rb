#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# install apache

# start the apache service
package "httpd" do
	action :installa
end

service "httpd" do
	action [:enable, :start]

end

cookbook_file "/var/www/index.html" do
	source 'index.html'
	mode '0644'
end

# start the apache service
# try to do it with sudo service instead of etc/init.d instruction
# make sure the service starts on reeboot

# write your home page