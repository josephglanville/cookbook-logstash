%w{inputs outputs filters}.each do |dir|
  directory ::File.join('/var/lib/logstash', dir)
end
