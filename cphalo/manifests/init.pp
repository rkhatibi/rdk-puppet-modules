class cphalo {

  case $::operatingsystem {
    /(?i:Ubuntu|Debian)/: { include cphalo::apt }
    /(?i:CentOS|RedHat|Fedora)/: { include cphalo::yum }
    default: {}
  }

  include cphalo::params, cphalo::data
  include cphalo::install, cphalo::firstart, cphalo::service

  Class['cphalo::install'] ~> Class['cphalo::firstart'] ~> Class['cphalo::service']

}
