#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
# install apache
package "apache2" do
  action :install
end

# start the apache service
service "apache2" do
  action [ :enable, :start ]
end

# Write our home page
cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end
#
