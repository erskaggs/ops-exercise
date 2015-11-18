#
# Cookbook Name:: plog
# Recipe:: default
#
# Copyright (C) 2015 Eric Skaggs
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'plog::harden'
include_recipe 'plog::mysql'
include_recipe 'plog::nginx'
include_recipe 'plog::hhvm'
include_recipe 'plog::ghost'
include_recipe 'plog::users-manage'
