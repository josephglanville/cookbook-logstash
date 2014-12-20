%w(input filter output).each do |f|
  template "/etc/logstash/conf.d/#{f}.conf" do
    cookbook node['logstash']['template_cookbook']
  end
end
