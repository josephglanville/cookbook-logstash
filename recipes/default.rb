include_recipe 'logstash::install'
include_recipe 'logstash::config'
include_recipe 'logstash::plugins'
include_recipe 'logstash::service'
