user {'puppet1':
	ensure => 'present',
	managehome => 'true',
	#before => File ['/opt/mydir']
	home => '/opt/mydir'
}
file {'/opt/mydir':
	ensure => 'directory',
	owner => 'puppet1',
	group => 'root'
}
