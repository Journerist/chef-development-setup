#
# Cookbook Name:: spotify
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install spotify" do
  command "brew cask install spotify"
  user "#{currentUser}"
end