#
# Cookbook Name:: eclipse
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

currentUser = `whoami`.chomp

remote_file "/Users/#{currentUser}/Downloads/eclipse-inst-mac64.tar.gz" do
  source 'http://artfiles.org/eclipse.org//oomph/epp/neon/R/eclipse-inst-mac64.tar.gz'
  owner "#{currentUser}"
  group 'staff'
  mode '0744'
  action :create
end

execute "extract eclipse" do
  command "tar zxvf /Users/#{currentUser}/Downloads/eclipse-inst-mac64.tar.gz -C /Users/#{currentUser}/Downloads/"
end

execute "install eclipse" do
  command "open \"/Users/#{currentUser}/Downloads/Eclipse Installer.app\""
end
