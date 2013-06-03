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

%w{ zsh emacs w3m lynx }.each do |pkg|
	log pkg
	package pkg do
		   	 action :install
	end
end

log "install settings files"

log "install .zshrc .alias .emacs.el"

template "zshrc" do
	path "/home/vagrant/.zshrc"
	source "zshrc.erb"
	owner "vagrant"
	group "vagrant"
	mode 0646
end

template "alias" do
	path "/home/vagrant/.alias"
	source "alias.erb"
	owner "vagrant"
	group "vagrant"
	mode 0646
end

template "emacs.el" do
	path "/home/vagrant/.emacs.el"
	source "emacs.el.erb"
	owner "vagrant"
	group "vagrant"
	mode 0646
end
