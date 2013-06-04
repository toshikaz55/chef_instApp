#
# Cookbook Name:: instApp
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "install some apps"

log "install zsh emacs w3m lynx"

%w{ zsh emacs tree w3m lynx }.each do |pkg|
  log pkg
  package pkg do
    action :install
  end
end

log "install settings files"

log "install .zshrc .alias .emacs.el"

template "zshrc" do
<<<<<<< HEAD
  path "/home/vagrant/.zshrc"
  source "zshrc.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

template "alias" do
  path "/home/vagrant/.alias"
  source "alias.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

directory '/home/vagrant/.emacs.d/' do
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

directory '/home/vagrant/.emacs.d/lisp/' do
  owner "vagrant"
  group "vagrant"
  mode 0755
  action :create
end

template "init.el" do
  path "/home/vagrant/.emacs.d/init.el"
  source "init.el.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

#template "jaspace.el" do
#  path "/home/vagrant/.emacs.d/lisp/jaspace.el"
#  source "jaspace.el.erb"
#  owner "vagrant"
#  group "vagrant"
#  mode 0644
#end

cookbook_file "/home/vagrant/.emacs.d/lisp/jaspace.el" do
  path "/home/vagrant/.emacs.d/lisp/jaspace.el"
  source "jaspace.el"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

