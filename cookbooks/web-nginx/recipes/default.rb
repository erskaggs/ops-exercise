#
# Cookbook Name:: web-nginx
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'nginx'

file "#{node.nginx.dir}/conf.d/default.conf" do
  action :delete
  notifies :reload, 'service[nginx]'
end
