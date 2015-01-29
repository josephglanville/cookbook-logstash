default['logstash']['home_dir'] = '/var/lib/logstash'
default['logstash']['default'] = {
  #JAVACMD: '/usr/bin/java',
  #LS_HOME: '/var/lib/logstash',
  LS_OPTS: '--pluginpath /var/lib/',
  #LS_HEAP_SIZE: '500m',
  #LS_JAVA_OPTS: '-Djava.io.tmpdir=$HOME'
  #LS_PIDFILE: '/var/run/logstash.pid',
  #LS_USER: 'logstash',
  #LS_LOG_FILE: '/var/log/logstash/logstash.log',
  #LS_USE_GC_LOGGING: 'true',
  #LS_CONF_DIR: '/etc/logstash/conf.d',
  #LS_OPEN_FILES: '16384',
  #LS_NICE: '19'
}
