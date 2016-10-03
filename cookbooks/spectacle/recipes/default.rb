#
# Cookbook Name:: spectacle
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install spectacle" do
  command "brew cask install spectacle"
  user "#{currentUser}"
end