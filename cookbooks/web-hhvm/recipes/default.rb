#
# Cookbook Name:: web-hhvm
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
apt_repository 'hhvm' do
    uri          'http://dl.hhvm.com/'.concat(node[:platform].downcase)
    distribution "trusty"
    components   ['main']
    key          'http://dl.hhvm.com/conf/hhvm.gpg.key'
end

apt_package 'hhvm' do
  action :install
end
