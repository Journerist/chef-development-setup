#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = `whoami`.chomp

remote_file "/Users/#{currentUser}/Downloads/node-v4.4.7.pkg" do
  source 'https://nodejs.org/dist/v4.4.7/node-v4.4.7.pkg'
  owner "#{currentUser}"
  group 'staff'
  mode '0755'
  action :create
end

execute "install nodejs" do
  command "installer -pkg /Users/#{currentUser}/Downloads/node-v4.4.7.pkg -target /"
  user "root"
end

execute "install flow" do
  command "npm install flow -g"
end