class ruby::config {

  case $::operatingsystem {
    Ubuntu: {
      package { 'rubygems-update':
        ensure   => present,
        provider => gem,
        notify   => Exec['update_rubygems'],
      }
      exec { 'update_rubygems':
        command     => '/var/lib/gems/1.8/bin/update_rubygems',
        logoutput   => on_failure,
        refreshonly => true,
      }
    }
    default: {}
  }

}
