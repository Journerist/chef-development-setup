#
# Cookbook Name:: eclipse
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install eclipse" do
  command "brew cask install eclipse-java"
  user "#{currentUser}"
end
