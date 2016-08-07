#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

remote_file "/Users/#{currentUser}/Downloads/Docker.dmg" do
  source 'https://download.docker.com/mac/stable/Docker.dmg'
  owner "#{currentUser}"
  group 'staff'
  mode '0644'
  action :create
end

execute "Mount Docker" do 
  command "hdiutil attach /Users/#{currentUser}/Downloads/Docker.dmg"
  user "root"
end

execute "install Docker" do
  command "open /Volumes/Docker/Docker.app"
  user "root"
end

