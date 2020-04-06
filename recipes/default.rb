#
# Cookbook:: mongodb3victor
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update

package 'mongodb' do
  version '1:3.6.3-0ubuntu1'
end

service 'mongodb' do
  action [:enable, :start]
end
