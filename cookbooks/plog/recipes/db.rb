#
# Cookbook Name:: plog
# Recipe:: db
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

mysql_client 'default' do
  action :create
end

mysql_service 'default' do
  port '3306'
  version '5.5'
  name 'localhost'
  initial_root_password 'p@$$W0rd'
  action [:create, :start]
end
