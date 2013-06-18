#
# Cookbook Name:: instApp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "instal yum.repo epel" do
  user "root"
  cwd "/tmp"

  code <<-EOC
    rpm -Uvh "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm"
  EOC
  not_if { ::File.exists?("/etc/yum.repos.d/epel.repo") }
end


log "install zsh emacs w3m lynx"
%w{ man zsh emacs ntp sqlite-devel git tmux tree w3m lynx }.each do |pkg|
  log pkg
  package pkg do
    action :install
  end
end

#rpm_package "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" do
#  action :install
#end

 
