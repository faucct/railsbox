#
# Cookbook Name:: railsbox
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#


include_recipe "appbox"
include_recipe "railsbox::ruby"
include_recipe "railsbox::nginx"
include_recipe "runit"
include_recipe "nodejs"

if node["railsbox"]["apps"]["unicorn"]
  include_recipe "railsbox::unicorn"
end

if node["railsbox"]["databases"]["postgresql"]
  include_recipe "railsbox::postgresql"
end


# if node["railsbox"]["apps"]["passenger"]
#   include_recipe "railsbox::passenger"
# end
