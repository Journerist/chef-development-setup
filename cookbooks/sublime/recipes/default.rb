#
# Cookbook Name:: sublime
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = `whoami`.chomp

# install sublime text 3
dmg_package 'Docker' do
  source   'https://download.sublimetext.com/Sublime%20Text%20Build%203114.dmg'
  action   :install
end


# download package control
remote_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package" do
  source 'https://packagecontrol.io/Package%20Control.sublime-package'
  owner "#{currentUser}"
  group 'staff'
  mode '0644'
  action :create
end

puts Dir.pwd

# add packages to install using package control
# FIXME: in chef-client 12.12 whitespaces in paths doesn't work. Until it is fixed the whitespace is removed from
# the filename. Sadly we need to wait to create a clonable repository for sublime users without mentioning about chef because
# this file name differs from the package control filename.
cookbook_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings" do
  source "default/PackageControl.sublime-settings"
  owner "#{currentUser}"
  group 'staff'
  mode '0644'
  action :create
end

# user settings
cookbook_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings" do
  source "default/Preferences.sublime-settings"
  owner "#{currentUser}"
  group 'staff'
  mode '0644'
  action :create
end

# hotkeys
# FIXME: no whitespace support in 12.12. Rename file when fixed to match to real filename.
cookbook_file "/Users/#{currentUser}/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap" do
  source "default/Default(OSX).sublime-keymap"
  owner "#{currentUser}"
  group 'staff'
  mode '0644'
  action :create
end

# symlink in ~/bin
link "/Users/#{currentUser}/bin/subl" do
  to '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'
  link_type :hard
end

