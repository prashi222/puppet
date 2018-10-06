package { 'httpd':
  ensure => 'present',
}
service { 'httpd':
	ensure => 'running',
	enable => true,
	require => Package ['httpd']
}
file { '/var/www/html/index.html':
	ensure => 'file',
	content => 'WEB SERVER2',
	require => Package ['httpd'],
	notify => Service ['httpd']
}

