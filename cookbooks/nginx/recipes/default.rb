#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, Harsh Chowdhary
#
# All rights reserved - Do Not Redistribute
#

log "Installing Nginx Package"

        package 'nginx' do
           action :install
        end


log "Writing nginx configuration file for load balancing"	
	
	template '/etc/nginx/conf.d/application.conf' do
	   source 'application.conf.erb'
	   action :create
	end


log "Remove default sites enabled file"

        file '/etc/nginx/sites-enabled/default' do
	    action :delete
	    only_if { File.exist? '/etc/nginx/sites-enabled/default' }
	end
		
		
log "Restart Nginx"
		
	execute 'Restart Nginx' do
	    command 'sudo sudo service nginx restart'
        end		
		
