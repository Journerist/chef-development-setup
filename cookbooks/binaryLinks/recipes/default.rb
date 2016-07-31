#
# Cookbook Name:: binaryLinks
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

currentUser = `whoami`.chomp

directory "/Users/#{currentUser}/bin" do
  owner "#{currentUser}"
  group 'staff'
  mode '0755'
  action :create
end

file "/Users/#{currentUser}/.bash_profile" do
  content "export PATH=$PATH:/Users/#{currentUser}/bin"
  mode '0755'
  owner "#{currentUser}"
  group 'staff'
end