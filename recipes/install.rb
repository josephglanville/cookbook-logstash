include_recipe 'logstash::java'
include_recipe 'logstash::repo'

%w(logstash logstash-contrib).each do |pkg|
  package pkg
end

cookbook_file '/etc/logrotate.d/logstash' do
  source 'logstash.logrotate'
  mode 0644
end
