#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install nodejs" do
  command "brew install node"
  user "#{currentUser}"
end

execute "install flow" do
  command "npm install flow -g"
end
