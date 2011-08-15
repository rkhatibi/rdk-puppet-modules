class cron::install {

  include cron::params

  package { "cron":
      name   => "${cron::params::packagename}",
      ensure => present,
  }

}
