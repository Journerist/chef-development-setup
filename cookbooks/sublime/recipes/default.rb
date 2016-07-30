#
# Cookbook Name:: sublime
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = `whoami`.chomp

# download package controle
remote_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package" do
  source 'https://packagecontrol.io/Package%20Control.sublime-package'
  owner "#{currentUser}"
  group 'staff'
  mode '0755'
  action :create
end

puts Dir.pwd

# add packages to install using package control
# FIXME: in chef-client 12.12 whitespaces in paths doesn't work. Until it is fixed the whitespace is removed from
# the filename. Sadly we need to wait to create a clonable repo for sublime users without mentioning about chef because
# this file name differs from the package controle filename.
cookbook_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings" do
  source "default/PackageControl.sublime-settings"
  owner "#{currentUser}"
  group 'staff'
  mode '0755'
  action :create
end

