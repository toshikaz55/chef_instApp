#
# Cookbook Name:: setTimeZone
# Recipe:: service
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

log "set TimeZone info : /usr/share/zoneinfo/Japan -> /etc/localtime : Time Zone /etc/sysconfig/clock"

bash "cp /usr/share/zoneinfo/Japan -> /etc/localtime" do
  code <<-EOC
    cp /usr/share/zoneinfo/#{node.timezone.zone} /etc/localtime
  EOC
end

template "/etc/sysconfig/clock" do
  source "timezone.erb"
end


