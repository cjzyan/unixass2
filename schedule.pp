#Change interval_time in puppet config file by intervaltime to 900 seconds-15min
class schedule{

augeas { 'interval_time' :
context => '/etc/puppetlabs/puppet/puppet.conf',
changes => [ 'set runiterval = 900', ]
}
}

