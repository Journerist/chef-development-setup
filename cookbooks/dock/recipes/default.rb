#
# Cookbook Name:: dock
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "lower dock hide delay" do
  command "defaults write com.apple.dock autohide-time-modifier -float 0.15"
  user "root"
end