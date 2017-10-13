#openssh
class opensshserver{
package { "openssh-server":
ensure => "installed",
}
#st
service { "sshd":
ensure => running,

}
#close permit root login
augeas { "sshd_config":
context => "/etc/ssh/sshd_config",
changes => [
"directive PermitRootLogin no",
],
}
}
