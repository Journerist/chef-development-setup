#
# Cookbook Name:: cask
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = node['user']

execute "install cask" do
    command "brew install caskroom/cask/brew-cask"
    user "#{currentUser}"
end