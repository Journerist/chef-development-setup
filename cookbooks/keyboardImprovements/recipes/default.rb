#
# Cookbook Name:: enableFnKeys
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "enable-fn-keys" do
  command "defaults write -g com.apple.keyboard.fnState -bool true"
  user "root"
end

execute "lower-key-pressed-interval-1" do
  command "defaults write -g InitialKeyRepeat -int 15"
  user "root"
end

execute "lower-key-pressed-interval-2" do
  command "defaults write -g KeyRepeat -int 2"
  user "root"
end