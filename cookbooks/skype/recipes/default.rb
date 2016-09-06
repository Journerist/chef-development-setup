#
# Cookbook Name:: skype
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install Skype" do
  command "brew cask install skype"
  user "#{currentUser}"
end