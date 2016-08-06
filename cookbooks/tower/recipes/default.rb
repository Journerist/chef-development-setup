#
# Cookbook Name:: tower
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

zip_app_package "Tower" do
  source  "https://fournova-app-updates.s3.amazonaws.com/apps/tower2-mac/315-880ab34c/Tower-2-2.4.0-315.zip"
end