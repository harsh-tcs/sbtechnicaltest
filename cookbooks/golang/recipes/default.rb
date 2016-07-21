#
# Cookbook Name:: golang
# Recipe:: default
#
# Copyright 2016, Harsh Chowdhary
#
# All rights reserved - Do Not Redistribute
#

log "Installing Golang Package"

        package 'golang' do
           action :install
        end


log "Installing Git Package"


        package 'git' do
           action :install
        end

log "Checking out git repository for the sample Go app"

        git "/home/vagrant/sbgoapp" do
            repository "https://github.com/harsh-tcs/sbgoapp.git"
			revision "master"
            action :sync
        end


log "Compiling and Running the Go Application"

        execute 'SB Go App' do
            command 'sudo go run /home/vagrant/sbgoapp/sampleapp.go &'
        end

