#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

package 'Install Git' do
    package_name 'git'
end


execute "install flow" do
  command "npm install flow -g"
end
