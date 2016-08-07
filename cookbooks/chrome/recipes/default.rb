#
# Cookbook Name:: chrome
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install google chrome" do
  command "brew cask install google-chrome"
  user "#{currentUser}"
end