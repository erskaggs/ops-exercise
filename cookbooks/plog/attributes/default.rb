#nginx defaults
default['http_root'] = '/var/www'
default['port'] = 80

#mysql defaults
default['mysql_instance'] = 'plog'
default['mysql_version'] = '5.5'
default['mysql_host'] = 'localhost'
default['mysql_port'] = 3306

#ghostblog defaults
default['ghost-blog']['install_dir'] = '/var/www/ghost'
