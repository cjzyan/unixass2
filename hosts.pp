#This class is for editing hosts file for short titan.
class hosts {
augeas { "hosts":
context => "/etc/hosts",
changes => [
"set *[ipaddr = '131.170.5.131']/canonical titan",
"set *[ipaddr = '131.170.5.131']/alias[1] titan.csit.rmit.edu.au",
],
}
}

