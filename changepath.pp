#add path to global.
class changepath{
exec { 'sudo export PATH=$PATH:/usr/local/bin' :
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}
}