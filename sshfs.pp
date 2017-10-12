#this class is for install sshfs package
class sshfs {
package { 'sshfs' :
ensure => installed,
}
}
