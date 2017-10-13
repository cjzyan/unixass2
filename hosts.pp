#This class is for editing hosts file for short titan.
class hosts {
host { 'titan.csit.rmit.edu.au':
ip           => '131.170.5.131',
host_aliases => 'titan',
}
}

