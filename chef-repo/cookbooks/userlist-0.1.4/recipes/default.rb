#
# Cookbook:: userlist
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved




prapti_password = data_bag_item('user_password','password')

user 'aurik' do
comment 'Aurik  C'
uid 2000
home '/home/aurik'
shell '/bin/bash'
password prapti_password['password']
end



