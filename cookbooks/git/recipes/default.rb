#
# Cookbook Name:: git
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

currentUser = `whoami`.chomp

# set rights to create a link, otherwise there will be a linking error when installing git
execute "chown-usr-local" do
  command "chown -R #{currentUser}:staff /usr/local"
  user "root"
end

package 'Install Git' do
    package_name 'git'
end