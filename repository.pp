#Add new repo and down load the packages
class repository{
exec { 'wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-10.noarch.rpm ; sudo  rpm -ivh epel-release-7-10.noarch.rpm ; sudo rm epel-release-7-10.noarch.rpm':
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}

exec { 'wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm ; sudo rpm -Uvh mysql57-community-release-el7-11.noarch.rpm ; rm mysql57-community-release-el7-11.noarch.rpm' :
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}

exec { 'sudo yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional':
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}

package { 'tcsh' :
ensure => installed,
}
package { 'wget' :
ensure => installed,
}
package { 'vim' :
ensure => present,
}
package { 'tmux' :
ensure => installed,
}
package { 'lynx' :
ensure => installed,
}
package { 'gcc' :
ensure => installed,
}
package { 'gdb' :
ensure => installed,
}
package { 'cgdb' :
ensure => present,
}
package { 'emacs' :
ensure => present,
}

#use wget to install stand alone package.
exec { 'wget https://jaist.dl.sourceforge.net/project/dia2code/dia2code/0.8.3/dia2code-0.8.3-3.1.i586.rpm ; sudo rpm -Uvh dia2code-0.8.3-3.1.i586.rpm ; sudo rm dia2code-0.8.3-3.1.i586.rpm' :
path   => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}
}