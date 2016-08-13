#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install java" do
  command "brew update && brew cask install java"
  user "#{currentUser}"
end