# encoding: utf-8
#
# Cookbook Name:: instApp
# Recipe:: instSettings
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "zshrc" do
  path "#{node.user.home}/.zshrc"
  source "zshrc.erb"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0644
end

bash "chsh /bin/bash -> /bin/zsh " do
  code <<-EOC
    chsh -s /bin/zsh
  EOC
end


template "alias" do
  path "#{node.user.home}/.alias"
  source "alias.erb"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0644
end

directory '#{node.user.home}/.emacs.d/' do
  path "#{node.user.home}/.emacs.d/"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0755
  action :create
end

directory '#{node.user.home}/.emacs.d/lisp/' do
  path "#{node.user.home}/.emacs.d/lisp/"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0755
  action :create
end

cookbook_file "#{node.user.home}/.emacs.d/init.el" do
  path "#{node.user.home}/.emacs.d/init.el"
  source "init.el"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0644
end

cookbook_file "#{node.user.home}/.emacs.d/lisp/jaspace.el" do
  path "#{node.user.home}/.emacs.d/lisp/jaspace.el"
  source "jaspace.el"
  owner "#{node.user.user_id}"
  group "#{node.user.group_id}"
  mode 0644
end

