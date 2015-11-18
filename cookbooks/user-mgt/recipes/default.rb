#
# Cookbook Name:: user-mgt
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

admins = data_bag('users')

admins.each do |login|
  admin = data_bag_item('users', login)
  home = "/home/#{login}"

  user(login) do
    shell     admin['shell']
    comment   admin['comment']
    home      home
    group     admin['group']
    supports  :manage_home => true
  end
end
