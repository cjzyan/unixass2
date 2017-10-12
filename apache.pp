#apache server setup
class apache (String $version = 'installed') {
package {'httpd':
ensure => $version,
}
#run apache server
#service {'httpd':
#ensure => running,
#}
#create root file 
file{"/var/www/s3464796":
ensure => 'directory',
mode   => '0755',
}
#change document root 
augeas {"httpd_conf" :
context =>"/files/etc/httpd/conf",
changes =>'set DocumentRoot "/var/www/s3464796"',
}
}