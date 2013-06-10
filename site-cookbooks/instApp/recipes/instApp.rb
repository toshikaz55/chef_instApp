#
# Cookbook Name:: instApp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

log "install zsh emacs w3m lynx"
%w{ zsh emacs ntp sqlite-devel git ruby gem tree w3m lynx }.each do |pkg|
  log pkg
  package pkg do
    action :install
  end
end
