include_recipe 'logstash::repo'
include_recipe 'logstash::java'

%w(logstash logstash-contrib).each do |pkg|
  package pkg
end
