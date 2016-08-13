#
# Cookbook Name:: kaleidoscope
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install kaleidoscope" do
  command "brew cask install kaleidoscope"
  user "#{currentUser}"
end