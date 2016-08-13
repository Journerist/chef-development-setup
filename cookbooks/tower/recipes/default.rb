#
# Cookbook Name:: tower
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install tower" do
  command "brew cask install tower"
  user "#{currentUser}"
end
