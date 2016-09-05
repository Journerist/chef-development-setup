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
