#change sudoers file
class changesudoer {
augeas { "sudoers":
context => "/etc/sudoers",
changes => [
"set spec[user = 'becca']/user becca",
"set spec[user = 'becca']/host_group/host ALL",
"set spec[user = 'becca']/host_group/command ALL",
"set spec[user = 'becca']/host_group/command/runas_user ALL",
],
}


}
