#
# Cookbook:: setup-jenkins
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe 'setup-jenkins::jdk_install'
include_recipe 'setup-jenkins::jenkins_install'