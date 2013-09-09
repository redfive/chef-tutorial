#
# Cookbook Name:: myface
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

# to make checking the configuration easier
package "chkconfig"

# Create a new user
user "myface"

# include apt so that apt-get update runs to allow mysql install
include_recipe "apt"

# install the mysql server, sets up mysql and configures it to start
# on system boot
include_recipe "mysql::server"
