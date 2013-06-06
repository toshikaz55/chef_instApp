#
# Cookbook Name:: instService
# Recipe:: service
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

log "install ntp service start chkconfig on"
package "ntp" do
    action :install
end

