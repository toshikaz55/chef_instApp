#
# Cookbook Name:: instApp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

log "install rvm node.js( from EPEL ) gem install rails"

bash "install RVM with curl " do
  user "#{node.user.user_id}"
  cwd "#{node.user.home}"
  environment "HOME" => "#{node.user.home}"
  code <<-EOC
    curl -L https://get.rvm.io | bash -s stable
  EOC
end

bash "Enable RVM" do
  user "#{node.user.user_id}"
  cwd "#{node.user.home}"
  environment "HOME" => "#{node.user.home}"
  code <<-EOC
    source #{node.user.home}/.rvm/scripts/rvm
  EOC
end

chef_gem 'rvm' do
  action :install
  version '>= 1.11.3.6'
end
require 'rvm'

#bash "install Ruby" do
#  user "#{node.user.user_id}"
#  cwd "#{node.user.home}"
#  environment "HOME" => "#{node.user.home}"
#  code <<-EOC
#    rvm install 1.9.3
#  EOC
#end



#chef_gem "sqlite3" do
#  action :install
#end
#require 'sqlite3'

yum_package "npm" do
    action :install
end

chef_gem "rails" do
  action :install
end

require 'rails'

