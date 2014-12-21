# Included logstash-web is nasty.
# If you want kibana install it behind a proper web server
# This disables it from starting.
file '/etc/init/logstash-web.override' do
  content 'manual'
  mode 0644
end
