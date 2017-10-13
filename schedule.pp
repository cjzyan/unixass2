#schedule run interval 3 time per hour
class schedule{
schedule { 'hourly':
  period => hourly,
  repeat => 3,
}
exec { 'interval':
        path => ['/usr/bin','/usr/sbin','/usr/local/bin','/opt/puppetlabs/bin/puppet','/usr/local/bin/puppet'],
  schedule => 'hourly',
  command => '/usr/local/bin/puppet agent -t',
  user => 'root'
}

}

