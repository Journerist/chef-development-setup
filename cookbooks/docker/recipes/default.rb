#
# Cookbook Name:: docker
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

dmg_package 'Docker' do
  source   'https://download.docker.com/mac/stable/Docker.dmg'
  action   :install
end