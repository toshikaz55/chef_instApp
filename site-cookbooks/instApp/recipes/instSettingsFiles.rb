#
# Cookbook Name:: instApp
# Recipe:: instSettingsFiles
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
log "install settings files"

log "install .zshrc .alias .emacs.el"

template "zshrc" do
	path "/home/vagrant/.zshrc"
	source "zshrc.erb"
	owner "vagrant"
	group "vagrant"
	mode 0646
end
