include_recipe 'logstash::java'

case node['logstash']['install_method']
when 'repo'
  include_recipe 'logstash::repo'
  %w(logstash logstash-contrib).each do |pkg|
    package pkg
  end
when 'dpkg'
  local_path = ::File.join(Chef::Config[:file_cache_path],
                           node['logstash']['dpkg']['filename'])
  remote_file local_path do
    source "#{node['logstash']['dpkg']['location']}/#{node['logstash']['dpkg']['filename']}"
  end

  dpkg_package 'logstash' do
    source local_path
  end
else
  fail "Unsupported Logstash installation method"
end
