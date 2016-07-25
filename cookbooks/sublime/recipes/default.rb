#
# Cookbook Name:: sublime
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
remote_file '/Users/journerist/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package' do
  source 'https://packagecontrol.io/Package%20Control.sublime-package'
  owner 'journerist'
  group 'staff'
  mode '0755'
  action :create
end
