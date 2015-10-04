#
# Cookbook Name:: riemann
# Recipe:: default
#
# Copyright (C) 2014 Fewbytes.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
=begin
#<
Configure user and group for riemann-servie and riemann-dash
#>
=end
group node['riemann']['system']['group'] do
  action :create
end

user node['riemann']['system']['user'] do
  action :create
  home node['riemann']['system']['home_dir']
  comment 'Riemann User'
  system true
  gid node['riemann']['system']['group']
  shell '/bin/false'
end
