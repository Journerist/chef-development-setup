#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install docker" do
  command "brew cask install docker"
  user "#{currentUser}"
end
